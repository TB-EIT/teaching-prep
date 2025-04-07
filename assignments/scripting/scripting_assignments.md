# Scripting

## Assignments

* This assignment is meant for you to demonstrate your knowledge of basic ways to parametrize, control, and improve robustness of your Bash/Powershell/Python scripts.
* You have to start with a simplest possible script implemented in one of the scripting languages and then improve it step-by-step in a variety of ways.
* What exactly your starting script will be doing - is up to you, but at the minimum, it must:
  1. Access some files in a directory different from the present working directory.
  2. Process/transform data in those files or about those file (for example - search for something, compress, move, calculate, change permissions, etc.)
  3. Save the results for Step 2 in other file(s) and directory(ies).
  4. Print out the intended actions, progress, and completion during the script run to the standard output (using echo/Write-Host/print commands).
  5. (Bonus) Alternatively, use azure CLI to interact with azure resources (Storage Account, Service Bus, etc.) instead of just files.
* You have to then iteratively change your script as per the assignments below and demonstrate the results by taking the screenshot of your code and execution results (submit the archive with all screenshots once done).
* (Bonus) Do all of the above with more than one scripting language.

| #   | Assignment                                                                                                                                                                                                    | Implement in Bash | Powershell | Python |
| --- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ----------------- | ---------- | ------ |
| 1   | Implement your starting script simply as a list of instructions. No variables, no logic, no error handling, no collections usage, etc.                                                                        |                   |            |        |
| 2   | Extract important/repeated values from your script and save/use them into/with variables. Hard-code the values of your variable at the begining of the script.                                                |                   |            |        |
| 3   | Instead of hard-coding, pass the values to your variables by asking the user to provide them.                                                                                                                 |                   |            |        |
| 4   | Same as above, but use an input file.                                                                                                                                                                         |                   |            |        |
| 5   | Same as above, but use CLI positional parameters.                                                                                                                                                             |                   |            |        |
| 6   | Same as above, but use parameter flags. (This is a bonus assignment, but only for Bash, it's required for Powershell and Python)                                                                              |                   |            |        |
| 7   | Same as above, but use Environmental Variables.                                                                                                                                                               |                   |            |        |
| 8   | Use if/then/else controls to influence how your script executes, based on one of the variable values.                                                                                                         |                   |            |        |
| 9   | Find a way to fail the execution of your script due to an external factor (missing file, directory, utility, etc). Implement error handling to gracefully handle the error or terminate the script execution. |                   |            |        |
| 10  | Use a list or array to make your script execute its core function at least three times based on the values suplied to the list/array.                                                                         |                   |            |        |
| 11  | (Bonus) Use a dictionary/map/associative array to influence how your script operates under a variety of expected scenarios.                                                                                  |                   |            |        |
