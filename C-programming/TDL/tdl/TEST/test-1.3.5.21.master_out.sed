Task Control Management x.y.z (MON-DAY-YEAR)
Goal        run-auto,wait {1}:        TCM {0} --> ON HOLD         (Inactive)
Goal        run-auto,wait {1}:  ON HOLD  --> TCM             (Sent)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_Constraint::findPrevious]  TDL_DEBUG:  [With-Do]   No previous nodes for available for "foo-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                  foo {2}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "foo-0"
_TDL_Serial ( Constrain=foo-1 , Ref=foo-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal              foo-int {3}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "foo-1"
_TDL_Serial ( Constrain=foo-2 , Ref=foo-1 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal           foo-double {4}:        TCM {1} --> ON HOLD         (Inactive)
Goal                  foo {2}:  ON HOLD  --> TCM             (Sent)
  Success   run-auto,wait {1}:
Goal foo()
Goal           resumefooA {5}:        TCM {2} --> ON HOLD         (Inactive)
Goal           resumefooA {5}:  ON HOLD  --> TCM             (Sent)
Goal resumeFooA()
Resume foo(A)
Resume foo(B)
Resume foo(C)
Resume foo(D)
Resume foo(E)
Resume foo(F)
  Success             foo {2}:
  Success      resumefooA {5}:
Goal              foo-int {3}:  ON HOLD  --> TCM             (Sent)
Goal foo(int)
Goal           resumefooG {6}:        TCM {3} --> ON HOLD         (Inactive)
Goal           resumefooG {6}:  ON HOLD  --> TCM             (Sent)
Goal resumeFooG()
Resume foo(G)
Resume foo(H)
Resume foo(I)
  Success         foo-int {3}:
  Success      resumefooG {6}:
Goal           foo-double {4}:  ON HOLD  --> TCM             (Sent)
Goal foo(double)
Goal           resumefooJ {7}:        TCM {4} --> ON HOLD         (Inactive)
Goal           resumefooJ {7}:  ON HOLD  --> TCM             (Sent)
Goal resumeFooA()
Resume foo(J)
Resume foo(K)
Resume foo(L)


_TDL_foo_test_1_3_5_21_tdl_0::resume():  ERROR:  Expected to find an Action of type "TDL-Goal-foo_test_1_3_5_21_tdl_0".  Instead, found an Action of type "TDL-Goal-foo_test_1_3_5_21_tdl_2".  The cause of this is a TDL_Resume_...() invocation who's leading TCM_Task_Tree_Ref argument corresponds to a TDL Task declaration other than the one that this TDL_Resume...() operation corresponds to.  (There is a 1-N mapping between TDL Goals/Commands/Monitors/ExceptionHandlers and TDL Resume Tasks.)  This is a really *REALLY* _BAD_ thing.  Due to internal casting operations, any task-arguments / persistent task arguments will be severely mangled, along with possible corruption of the internal virtual pointer table for the underlying _Action class.


Resume foo(F)
  Success      foo-double {4}:
  Success      resumefooJ {7}:
