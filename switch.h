#ifndef COMPNET_LAB4_SRC_SWITCH_H
#define COMPNET_LAB4_SRC_SWITCH_H

#include "types.h"
#include <vector>
#include <iostream>

using namespace std;

class SwitchBase {
 public:
  SwitchBase() = default;
  ~SwitchBase() = default;

  virtual void InitSwitch(int numPorts) = 0;
  virtual int ProcessFrame(int inPort, char* framePtr) = 0;
};

extern SwitchBase* CreateSwitchObject();

// TODO : Implement your switch class.
class Switch : public SwitchBase
{
private:
  struct tableItem
  {
    mac_addr_t mac{};
    int port = 0;
    int counter = 10;
    tableItem(mac_addr_t mac_,int port_,int counter_ = 10)
    {
      memcpy(mac,mac_,ETH_ALEN);
      port = port_;
      counter = counter_;
    }
  };
  vector<tableItem> table;
  int portNum;

  void PrintMACaddress(unsigned char MACData[])
  {
    printf("MAC Address: %02X-%02X-%02X-%02X-%02X-%02X", 
        MACData[0], MACData[1], MACData[2], MACData[3], MACData[4], MACData[5]);
  }

  ether_header_t getHeader(const char* framePtr)
  {
    ether_header_t header;
    memcpy(&header,framePtr,16);
    return header;
  }

  bool cmpMAC(mac_addr_t m1,mac_addr_t m2)
  {
    for(int i=0;i<6;i++)
    {
      if(m1[i] != m2[i]) return false;
    }
    return true;
  }

public:
  

  void InitSwitch(int numPorts) override
  {
    portNum = numPorts;
  }

  int ProcessFrame(int inPort, char* framePtr) override
  {
    ether_header_t header = getHeader(framePtr);
    int index = -1;
    for(int i=0;i<table.size();i++)
    {
      if(cmpMAC(header.ether_src,table[i].mac))
      {
        index = i;
        table[i].counter = 10;
        break;
      }
    }
    if(index == -1)
    {
      table.push_back(tableItem(header.ether_src,inPort));
    }
    for(int i=0;i<table.size();i++)
    {
      PrintMACaddress(table[i].mac);
      cout << "\t" << "port=" << table[i].port << "\t" << "counter=" << table[i].counter << endl;
    }
    if(header.ether_type == ETHER_DATA_TYPE)
    {
      for(int i=0;i<table.size();i++)
      {
        if(cmpMAC(header.ether_dest,table[i].mac))
        {
          if(table[i].port != inPort) return table[i].port;
          else return -1;
        }
      }
      return 0;
    }
    else if(header.ether_type == ETHER_CONTROL_TYPE)
    {
      for(int i=0;i<table.size();i++)
      {
        table[i].counter--;
        if(table[i].counter <= 0)
        {
          table.erase(table.begin()+i);
        }
      }
      return -1;
    }
    return -1;
  }
  
};

#endif  // ! COMPNET_LAB4_SRC_SWITCH_H
