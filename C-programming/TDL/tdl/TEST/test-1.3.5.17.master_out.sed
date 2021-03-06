Task Control Management x.y.z (MON-DAY-YEAR)
Goal          A-auto,wait {1}:        TCM {0} --> ON HOLD         (Inactive)
Goal          A-auto,wait {1}:  ON HOLD  --> TCM             (Sent)
Goal A
_TDL_AddExceptionHandler ( Node=B-0, handler=0x........, index=1 )
Constraint:  _TDL_AddExceptionHandler  (0x........)
 handler = 0x........ index = 1

[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_Constraint::findPrevious]  TDL_DEBUG:  [With-Do]   No previous nodes for available for "B-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    B {2}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=B-1 , Ref=B-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    B {3}:        TCM {1} --> ON HOLD         (Inactive)
Goal                    B {2}:  ON HOLD  --> TCM             (Sent)
  Success     A-auto,wait {1}:
Goal B
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_Constraint::findPrevious]  TDL_DEBUG:  [With-Do]   No previous nodes for available for "C-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {4}:        TCM {2} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-0"
_TDL_Serial ( Constrain=C-1 , Ref=C-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {5}:        TCM {2} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-1"
_TDL_Serial ( Constrain=C-2 , Ref=C-1 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {6}:        TCM {2} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-2"
_TDL_Serial ( Constrain=C-3 , Ref=C-2 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {7}:        TCM {2} --> ON HOLD         (Inactive)
Goal                    C {4}:  ON HOLD  --> TCM             (Sent)
  Success               B {2}:
Goal C
Goal         ourException {8}:        TCM {4} --> ON HOLD         (Inactive)
Goal         ourException {8}:  ON HOLD  --> TCM             (Sent)
  Failure               C {4}:
[ourExceptionHandler]:  Goal-B
  Success    ourException {8}:
Goal                    C {5}:  ON HOLD  --> TCM             (Sent)
Goal C
Goal         ourException {9}:        TCM {5} --> ON HOLD         (Inactive)
Goal         ourException {9}:  ON HOLD  --> TCM             (Sent)
  Failure               C {5}:
[ourExceptionHandler]:  Goal-B
  Success    ourException {9}:
Goal                    C {6}:  ON HOLD  --> TCM             (Sent)
Goal C
Goal         ourException {10}:        TCM {6} --> ON HOLD         (Inactive)
Goal         ourException {10}:  ON HOLD  --> TCM             (Sent)
  Failure               C {6}:
[ourExceptionHandler]:  Goal-A&B
  Success    ourException {10}:
Goal                    C {7}:  ON HOLD  --> TCM             (Sent)
Goal C
Goal         ourException {11}:        TCM {7} --> ON HOLD         (Inactive)
Goal         ourException {11}:  ON HOLD  --> TCM             (Sent)
  Failure               C {7}:
[ourExceptionHandler]:  Goal-A
  Success    ourException {11}:
Goal                    B {3}:  ON HOLD  --> TCM             (Sent)
Goal B
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_Constraint::findPrevious]  TDL_DEBUG:  [With-Do]   No previous nodes for available for "C-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {12}:        TCM {3} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-0"
_TDL_Serial ( Constrain=C-1 , Ref=C-0 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {13}:        TCM {3} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-1"
_TDL_Serial ( Constrain=C-2 , Ref=C-1 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {14}:        TCM {3} --> ON HOLD         (Inactive)
[_TDL_TreeNodeBranch::getPreviousChild]  TDL_DEBUG:  Returning Previous of:  "C-2"
_TDL_Serial ( Constrain=C-3 , Ref=C-2 [Ref_flags: RUNNING] )
Constraint:  _TDL_Serial  (0x........)
 ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {15}:        TCM {3} --> ON HOLD         (Inactive)
Goal                    C {12}:  ON HOLD  --> TCM             (Sent)
  Success               B {3}:
Goal C
Goal         ourException {16}:        TCM {12} --> ON HOLD         (Inactive)
Goal         ourException {16}:  ON HOLD  --> TCM             (Sent)
  Failure               C {12}:
[ourExceptionHandler]:  Goal-B
  Success    ourException {16}:
Goal                    C {13}:  ON HOLD  --> TCM             (Sent)
Goal C
Goal         ourException {17}:        TCM {13} --> ON HOLD         (Inactive)
Goal         ourException {17}:  ON HOLD  --> TCM             (Sent)
  Failure               C {13}:
[ourExceptionHandler]:  Goal-B
  Success    ourException {17}:
Goal                    C {14}:  ON HOLD  --> TCM             (Sent)
Goal C
Goal         ourException {18}:        TCM {14} --> ON HOLD         (Inactive)
Goal         ourException {18}:  ON HOLD  --> TCM             (Sent)
  Failure               C {14}:
[ourExceptionHandler]:  Goal-A
  Success    ourException {18}:
Goal                    C {15}:  ON HOLD  --> TCM             (Sent)
Goal C
WARNING: No exception handler found for exception type "ourException"
  Failure               C {15}:
