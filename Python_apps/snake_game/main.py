import turtle
from turtle import Screen
from snake import Snake
import time
from food import Food
from score import ScoreBoard

screen = Screen()
screen.setup(width=600, height=600)
screen.bgcolor("black")
screen.title("MySnakeGame")
screen.tracer(0)

snake = Snake()
food = Food()
score = ScoreBoard()

screen.listen()
screen.onkey(snake.move_left, "a")
screen.onkey(snake.move_right, "d")
screen.onkey(snake.move_up, "w")
screen.onkey(snake.move_down, "s")

game_is_on = True

while game_is_on:
    screen.update()
    time.sleep(0.2)
    snake.move()

    # Detect collision with food
    if snake.head.distance(food) < 15:
        food.refresh()
        snake.extend()
        score.increase_score()

    # Detect collision with wall
    if snake.head.xcor() > 280 or snake.head.xcor() < -280 or snake.head.ycor() > 280 or snake.head.ycor() < -280:
        # game_is_on = False
        # score.game_over()
        score.reset()
        snake.reset()


    # Detect collision with tail
    for segment in snake.segments[1:]:  # taking from second block
        # if segment == snake.head:
        #     pass
        if snake.head.distance(segment) < 10:
            score.reset()
            snake.reset()

screen.exitonclick()
