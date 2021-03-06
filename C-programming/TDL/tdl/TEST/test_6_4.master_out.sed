Task Control Management x.y.z (MON-DAY-YEAR)
Monitor   fooMonitor-auto,wait {1}:        TCM {0} --> ON HOLD         (Inactive)
Monitor   fooMonitor-auto,wait {1}:  ON HOLD  --> TCM             (Sent)
Command   ACT-fooMonitor-auto,wait {2}:        TCM {1} --> ON HOLD         (Inactive)
Command   ACT-fooMonitor-auto,wait {2}:  ON HOLD  --> TCM             (Sent)
Test: (1) FooMonitor ( theInt = 0 ):  testPersistent = 1
Goal              printme {4}:        TCM {2} --> ON HOLD         (Inactive)
_TDL_Serial ( Constrain=resumeFoo-0 , Ref=printme-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("printme-0")

Goal            resumeFoo {5}:        TCM {2} --> ON HOLD         (Inactive)
Goal              printme {4}:  ON HOLD  --> TCM             (Sent)
Test:  [printme]:  foo test 1
  Success         printme {4}:
Goal            resumeFoo {5}:  ON HOLD  --> TCM             (Sent)
Test:   (2) resumeFoo ( 0x........ )
Goal      printme-auto,wait {6}:        TCM {5} --> ON HOLD         (Inactive)
Goal      printme-auto,wait {6}:  ON HOLD  --> TCM             (Sent)
Test:    [printme]:  Task resumeFoo: test 2
  Success printme-auto,wait {6}:
Test:     (3) Resume fooMonitor ( 100 ):  theInt = 0,   testPersistent = 2
Goal              printme {7}:        TCM {2} --> ON HOLD         (Inactive)
Goal              printme {7}:  ON HOLD  --> TCM             (Sent)
  Success ACT-fooMonitor-auto,wait {2}:
  Success       resumeFoo {5}:
Test:      [printme]:  foo resume test 3
  Success         printme {7}:
Command   ACT-fooMonitor-auto,wait {8}:        TCM {1} --> ON HOLD         (Inactive)
Command   ACT-fooMonitor-auto,wait {8}:  ON HOLD  --> TCM             (Sent)
Test: (1) FooMonitor ( theInt = 0 ):  testPersistent = 3
Goal              printme {9}:        TCM {8} --> ON HOLD         (Inactive)
_TDL_Serial ( Constrain=resumeFoo-0 , Ref=printme-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("printme-0")

Goal            resumeFoo {10}:        TCM {8} --> ON HOLD         (Inactive)
Goal              printme {9}:  ON HOLD  --> TCM             (Sent)
Test:  [printme]:  foo test 1
  Success         printme {9}:
Goal            resumeFoo {10}:  ON HOLD  --> TCM             (Sent)
Test:   (2) resumeFoo ( 0x........ )
Goal      printme-auto,wait {11}:        TCM {10} --> ON HOLD         (Inactive)
Goal      printme-auto,wait {11}:  ON HOLD  --> TCM             (Sent)
Test:    [printme]:  Task resumeFoo: test 2
  Success printme-auto,wait {11}:
Test:     (3) Resume fooMonitor ( 100 ):  theInt = 0,   testPersistent = 4
Goal              printme {12}:        TCM {8} --> ON HOLD         (Inactive)
Goal              printme {12}:  ON HOLD  --> TCM             (Sent)
  Success ACT-fooMonitor-auto,wait {8}:
  Success       resumeFoo {10}:
Test:      [printme]:  foo resume test 3
  Success         printme {12}:
Command   ACT-fooMonitor-auto,wait {13}:        TCM {1} --> ON HOLD         (Inactive)
Command   ACT-fooMonitor-auto,wait {13}:  ON HOLD  --> TCM             (Sent)
Test: (1) FooMonitor ( theInt = 0 ):  testPersistent = 5
Goal              printme {14}:        TCM {13} --> ON HOLD         (Inactive)
_TDL_Serial ( Constrain=resumeFoo-0 , Ref=printme-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("printme-0")

Goal            resumeFoo {15}:        TCM {13} --> ON HOLD         (Inactive)
Goal              printme {14}:  ON HOLD  --> TCM             (Sent)
Test:  [printme]:  foo test 1
  Success         printme {14}:
Goal            resumeFoo {15}:  ON HOLD  --> TCM             (Sent)
Test:   (2) resumeFoo ( 0x........ )
Goal      printme-auto,wait {16}:        TCM {15} --> ON HOLD         (Inactive)
Goal      printme-auto,wait {16}:  ON HOLD  --> TCM             (Sent)
Test:    [printme]:  Task resumeFoo: test 2
  Success printme-auto,wait {16}:
Test:     (3) Resume fooMonitor ( 100 ):  theInt = 0,   testPersistent = 6
Goal              printme {17}:        TCM {13} --> ON HOLD         (Inactive)
Goal              printme {17}:  ON HOLD  --> TCM             (Sent)
  Success ACT-fooMonitor-auto,wait {13}:
  Success       resumeFoo {15}:
Test:      [printme]:  foo resume test 3
  Success         printme {17}:
Command   ACT-fooMonitor-auto,wait {18}:        TCM {1} --> ON HOLD         (Inactive)
Command   ACT-fooMonitor-auto,wait {18}:  ON HOLD  --> TCM             (Sent)
Test: (1) FooMonitor ( theInt = 0 ):  testPersistent = 7
Goal              printme {19}:        TCM {18} --> ON HOLD         (Inactive)
_TDL_Serial ( Constrain=resumeFoo-0 , Ref=printme-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("printme-0")

Goal            resumeFoo {20}:        TCM {18} --> ON HOLD         (Inactive)
Goal              printme {19}:  ON HOLD  --> TCM             (Sent)
Test:  [printme]:  foo test 1
  Success         printme {19}:
Goal            resumeFoo {20}:  ON HOLD  --> TCM             (Sent)
Test:   (2) resumeFoo ( 0x........ )
Goal      printme-auto,wait {21}:        TCM {20} --> ON HOLD         (Inactive)
Goal      printme-auto,wait {21}:  ON HOLD  --> TCM             (Sent)
Test:    [printme]:  Task resumeFoo: test 2
  Success printme-auto,wait {21}:
Test:     (3) Resume fooMonitor ( 100 ):  theInt = 0,   testPersistent = 8
Goal              printme {22}:        TCM {18} --> ON HOLD         (Inactive)
Goal              printme {22}:  ON HOLD  --> TCM             (Sent)
  Success ACT-fooMonitor-auto,wait {18}:
  Success       resumeFoo {20}:
Test:      [printme]:  foo resume test 3
  Success         printme {22}:
Command   ACT-fooMonitor-auto,wait {23}:        TCM {1} --> ON HOLD         (Inactive)
Command   ACT-fooMonitor-auto,wait {23}:  ON HOLD  --> TCM             (Sent)
 Complete fooMonitor-auto,wait {1}:
Test: (1) FooMonitor ( theInt = 0 ):  testPersistent = 9
Goal              printme {24}:        TCM {23} --> ON HOLD         (Inactive)
_TDL_Serial ( Constrain=resumeFoo-0 , Ref=printme-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("printme-0")

Goal            resumeFoo {25}:        TCM {23} --> ON HOLD         (Inactive)
Goal              printme {24}:  ON HOLD  --> TCM             (Sent)
Test:  [printme]:  foo test 1
  Success         printme {24}:
Goal            resumeFoo {25}:  ON HOLD  --> TCM             (Sent)
Test:   (2) resumeFoo ( 0x........ )
Goal      printme-auto,wait {26}:        TCM {25} --> ON HOLD         (Inactive)
Goal      printme-auto,wait {26}:  ON HOLD  --> TCM             (Sent)
Test:    [printme]:  Task resumeFoo: test 2
  Success printme-auto,wait {26}:
Test:     (3) Resume fooMonitor ( 100 ):  theInt = 0,   testPersistent = 10
Goal              printme {27}:        TCM {23} --> ON HOLD         (Inactive)
Goal              printme {27}:  ON HOLD  --> TCM             (Sent)
  Success ACT-fooMonitor-auto,wait {23}:
  Success       resumeFoo {25}:
Test:      [printme]:  foo resume test 3
  Success         printme {27}:
