resource "aws_ecs_cluster" "abc_cluster" {
 name = "abc-ecs-cluster"
}
resource "aws_ecs_task_definition" "nginx_task" {
 family                   = "abc-nginx-task"
 requires_compatibilities = ["FARGATE"]
 cpu                      = "256"
 memory                   = "512"
 network_mode             = "awsvpc"
 container_definitions = jsonencode([
   {
     name  = "nginx"
     image = "nginx"
     essential = true
     portMappings = [{
       containerPort = 80
       hostPort      = 80
     }]
   }
 ])
}
