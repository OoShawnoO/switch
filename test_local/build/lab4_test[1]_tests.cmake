add_test( Topology1.Forwarding [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology1.Forwarding]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology1.Forwarding PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology1.SwitchAging [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology1.SwitchAging]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology1.SwitchAging PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology2.Forwarding [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology2.Forwarding]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology2.Forwarding PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology2.SwitchAging [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology2.SwitchAging]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology2.SwitchAging PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology3.Forwarding [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology3.Forwarding]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology3.Forwarding PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology3.SwitchAging [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology3.SwitchAging]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology3.SwitchAging PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology4.Forwarding [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology4.Forwarding]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology4.Forwarding PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
add_test( Topology4.Mixing [==[/home/huzhida/桌面/lab4/test_local/build/lab4_test]==] [==[--gtest_filter=Topology4.Mixing]==] --gtest_also_run_disabled_tests)
set_tests_properties( Topology4.Mixing PROPERTIES WORKING_DIRECTORY [==[/home/huzhida/桌面/lab4/test_local/build]==] SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set( lab4_test_TESTS Topology1.Forwarding Topology1.SwitchAging Topology2.Forwarding Topology2.SwitchAging Topology3.Forwarding Topology3.SwitchAging Topology4.Forwarding Topology4.Mixing)