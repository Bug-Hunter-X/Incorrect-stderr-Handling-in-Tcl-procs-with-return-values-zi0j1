# Incorrect stderr Handling in Tcl procs with return values

This repository demonstrates a subtle bug in Tcl related to the interaction of `puts stderr` within a procedure that also returns a value. The standard `puts stderr` command is not handled correctly resulting in unexpected behavior.

## Bug Description
The issue arises when a Tcl procedure uses `puts stderr` to write to standard error and then returns a value.  The expected behavior would be to see the stderr output and then receive the returned value, but this doesn't always happen, and the returned value might be unpredictable.

## Bug Reproduction
The `bug.tcl` file contains the code that reproduces the problem. Run the script to observe the incorrect behavior.

## Solution
The `bugSolution.tcl` file provides a corrected version. The solution involves using the `return` correctly to return the actual value.