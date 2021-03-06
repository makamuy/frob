Root Node transitioning from Unplanned to Planning
Root Node transitioning from Unachieved to Achieving
Task Control Management x.y.z (MON-DAY-YEAR)
Goal          A-auto,wait {1}:        TCM {0} --> ON HOLD         (Inactive)
A-auto,wait transitioning from Unplanned to Planning
A-auto,wait transitioning from Unhandled to Handling
Goal          A-auto,wait {1}:  ON HOLD  --> TCM             (Sent)
A-auto,wait transitioning from Unachieved to Achieving
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_ConstraintWithReference::applyConstraints]  _TDL_DEBUG:  [With-Do]   No previous nodes for available for "B-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    B {2}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_ConstraintWithReference::applyConstraints]  _TDL_DEBUG:  [With-Do]   No previous nodes for available for "C-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=C-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=C-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    C {3}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "C-0"
_TDL_Serial ( Constrain=D-0 , Ref=C-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=D-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=D-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    D {4}:        TCM {1} --> ON HOLD         (Inactive)
_TDL_Parallel ( Constrain=E-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "D-0"
_TDL_Serial ( Constrain=E-0 , Ref=D-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=E-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=E-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    E {5}:        TCM {1} --> ON HOLD         (Inactive)
_TDL_Parallel ( Constrain=F-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "D-0"
_TDL_Serial ( Constrain=F-0 , Ref=D-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=F-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=F-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    F {6}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "NULL"
[_TDL_ConstraintWithReference::applyConstraints]  _TDL_DEBUG:  [With-Do]   No previous nodes for available for "G-0" Constraint:
   Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=G-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=G-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    G {7}:        TCM {1} --> ON HOLD         (Inactive)
Goal          J-auto,wait {8}:        TCM {0} --> ON HOLD         (Inactive)
B transitioning from Unplanned to Planning
B transitioning from Unhandled to Handling
Goal                    B {2}:  ON HOLD  --> TCM             (Sent)
B transitioning from Unachieved to Achieving
J-auto,wait transitioning from Unplanned to Planning
J-auto,wait transitioning from Unhandled to Handling
Goal          J-auto,wait {8}:  ON HOLD  --> TCM             (Sent)
J-auto,wait transitioning from Unachieved to Achieving
Running:  B
B transitioning from Achieving to Achieved
B transitioning from Planning to Planned
B transitioning from Handling to Handled
  Success               B {2}:
G transitioning from Unachieved to Achieving
G transitioning from Unplanned to Planning
G transitioning from Unhandled to Handling
Goal                    G {7}:  ON HOLD  --> TCM             (Sent)
C transitioning from Unachieved to Achieving
C transitioning from Unplanned to Planning
C transitioning from Unhandled to Handling
Goal                    C {3}:  ON HOLD  --> TCM             (Sent)
Running:  J
J-auto,wait transitioning from Achieving to Achieved
J-auto,wait transitioning from Planning to Planned
J-auto,wait transitioning from Handling to Handled
  Success     J-auto,wait {8}:
Running:  G
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "G-0"
_TDL_Serial ( Constrain=H-0 , Ref=G-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Parallel ( Constrain=H-0 )
Constraint:  _TDL_Parallel  (0x........)

[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "B-0"
_TDL_Serial ( Constrain=H-0 , Ref=B-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    H {9}:        TCM {1} --> ON HOLD         (Inactive)
[_TDL_TreeBranchData::getPreviousChild]  _TDL_DEBUG:  Returning Previous of:  "WithDo-1"
_TDL_Serial ( Constrain=I-0 , Ref=C-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Serial ( Constrain=I-0 , Ref=D-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Serial ( Constrain=I-0 , Ref=E-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Serial ( Constrain=I-0 , Ref=F-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Serial ( Constrain=I-0 , Ref=G-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

_TDL_Serial ( Constrain=I-0 , Ref=H-0 )
Constraint:  _TDL_Serial  (0x........)
    ActualReferenceNode = 0x........   ("PREVIOUS")

Goal                    I {10}:        TCM {1} --> ON HOLD         (Inactive)
G transitioning from Achieving to Achieved
G transitioning from Planning to Planned
G transitioning from Handling to Handled
  Success               G {7}:
A-auto,wait transitioning from Handling to Handled
  Success     A-auto,wait {1}:
H transitioning from Unachieved to Achieving
H transitioning from Unplanned to Planning
H transitioning from Unhandled to Handling
Goal                    H {9}:  ON HOLD  --> TCM             (Sent)
Running:  C
C transitioning from Achieving to Achieved
C transitioning from Planning to Planned
C transitioning from Handling to Handled
  Success               C {3}:
D transitioning from Unachieved to Achieving
D transitioning from Unplanned to Planning
D transitioning from Unhandled to Handling
Goal                    D {4}:  ON HOLD  --> TCM             (Sent)
Running:  H
H transitioning from Achieving to Achieved
H transitioning from Planning to Planned
H transitioning from Handling to Handled
  Success               H {9}:
Running:  D
D transitioning from Achieving to Achieved
D transitioning from Planning to Planned
D transitioning from Handling to Handled
  Success               D {4}:
F transitioning from Unachieved to Achieving
F transitioning from Unplanned to Planning
F transitioning from Unhandled to Handling
Goal                    F {6}:  ON HOLD  --> TCM             (Sent)
E transitioning from Unachieved to Achieving
E transitioning from Unplanned to Planning
E transitioning from Unhandled to Handling
Goal                    E {5}:  ON HOLD  --> TCM             (Sent)
Running:  F
F transitioning from Achieving to Achieved
F transitioning from Planning to Planned
F transitioning from Handling to Handled
  Success               F {6}:
Running:  E
E transitioning from Achieving to Achieved
E transitioning from Planning to Planned
E transitioning from Handling to Handled
  Success               E {5}:
I transitioning from Unachieved to Achieving
I transitioning from Unplanned to Planning
I transitioning from Unhandled to Handling
Goal                    I {10}:  ON HOLD  --> TCM             (Sent)
Running:  I
I transitioning from Achieving to Achieved
I transitioning from Planning to Planned
I transitioning from Handling to Handled
  Success               I {10}:
A-auto,wait transitioning from Achieving to Achieved
A-auto,wait transitioning from Planning to Planned
Deleting Root Node
