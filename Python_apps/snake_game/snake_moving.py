import time
from turtle import Turtle, Screen

screen = Screen()
screen.setup(width=600, height=600)
screen.bgcolor("black")
screen.title("My Snake Game")
screen.tracer(0)
starting_positions = [(0, 0), (-20, 0), (-40, 0)]

segments = []

for position in starting_positions:
    new_segment = Turtle("square")
    new_segment.color("white")
    new_segment.penup()
    new_segment.goto(position)
    segments.append(new_segment)

game_is_on = True


def move_left():
    segments[0].setheading(180)


def move_right():
    segments[0].setheading(0)


def move_up():
    segments[0].setheading(90)


def move_down():
    segments[0].setheading(270)


screen.listen()

while game_is_on:
    screen.update()
    time.sleep(0.1)
    for seg in range(len(segments)-1, 0, -1):
        new_x = segments[seg - 1].xcor()
        new_y = segments[seg - 1].ycor()
        segments[seg].goto(new_x, new_y)

    segments[0].forward(10)
    screen.onkey(move_left, "a")
    screen.onkey(move_right, "d")
    screen.onkey(move_up, "w")
    screen.onkey(move_down, "s")

screen.exitonclick()
