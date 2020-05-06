//
// Created by Leonid  on 2019-06-07.
//

#ifndef HelloControllerTest_hpp
#define HelloControllerTest_hpp

#include "oatpp-test/UnitTest.hpp"

class HelloControllerTest : public oatpp::test::UnitTest {
public:

  HelloControllerTest() : UnitTest("TEST[HelloControllerTest]"){}
  void onRun() override;

};

#endif // HelloControllerTest_hpp
