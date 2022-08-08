all: floor clear_message lift_body lift_ctrl lift_manager lift_sensor
floor: floor.o
	cc floor.o -o floor -lpthread
clear_message: clear_message.o
	cc clear_message.o -o clear_message
lift_body: lift_body.o
	cc lift_body.o -o lift_body
lift_ctrl: lift_ctrl.o
	cc lift_ctrl.o -o lift_ctrl
lift_manager: lift_manager.o
	cc lift_manager.o -o lift_manager -lpthread
lift_sensor: lift_sensor.o
	cc lift_sensor.o -o lift_sensor -lpthread

floor.o: floor.c
	cc -c floor.c
clear_message.o: clear_message.c
	cc -c clear_message.c
lift_body.o: lift_body.c
	cc -c lift_body.c
lift_ctrl.o: lift_ctrl.c
	cc -c lift_ctrl.c
lift_manager.o: lift_manager.c
	cc -c lift_manager.c
lift_sensor.o: lift_sensor.c
	cc -c lift_sensor.c
clean:
	rm -f *.o
reset:
	rm -f *.o floor clear_message lift_body lift_ctrl lift_manager lift_sensor *.c~