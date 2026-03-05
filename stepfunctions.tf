resource "aws_sfn_state_machine" "workflow" {
 name     = "abc-processing-workflow"
 role_arn = aws_iam_role.step_function_role.arn
 definition = jsonencode({
   StartAt = "ValidateEC2"
   States = {
     ValidateEC2 = {
       Type = "Pass"
       Next = "RunECSTask"
     }
     RunECSTask = {
       Type = "Pass"
       End  = true
     }
   }
 })
}
