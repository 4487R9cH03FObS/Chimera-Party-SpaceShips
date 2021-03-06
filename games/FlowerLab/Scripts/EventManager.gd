extends Node

var event_no = 0
var event_names = {0:"start",1:"woa"}
var debug = 0
var events_ended = false

func _ready():
	_launch_event()

func _launch_event():
	if events_ended:
		
		return
	# do launch some events
	var timer_follow_up = _event_launcher()
	
	if timer_follow_up == null or events_ended:
		print("the event tree has been severed")
		push_warning("the event tree has been severed")
		return
	
	$customTimer.wait_time = timer_follow_up
	$customTimer.start()

func _its_timeout():
	event_no+=1
	if debug:
		pass
	
	_launch_event()

func external_event_changer(number):
	event_no = number
	$customTimer.stop()
	_its_timeout()

func _end_times(a=null):
	events_ended = true
	print("events_ended")

func _event_launcher():
	var time = null
	# print("evento: "+str(event_no))
	if _test_no:
		event_no = _test_no_n-1
	if events_ended:
		return
		pass
	
	match event_no:
		0:
			time = 2
		1:
			if test_events:
				return _test_events()
			emit_signal("start_gameplay_music")
			emit_signal("display_message","   START!")
			emit_signal("normal_random_asteroids",0.3)
			emit_signal("set_asteroid_speed",100)
			time = 3
		2:
			emit_signal("hide_message")
			emit_signal("normal_random_asteroids",0.4)
			emit_signal("set_asteroid_speed",300)
			time = 4
		3:
			emit_signal("set_asteroid_speed",350)
			emit_signal("simetric_random_asteroids",0.2)
			time = 4
		4:
			emit_signal("simetric_random_asteroids",1)
			time = 3
		5:
			emit_signal("set_asteroid_speed",300)
			emit_signal("array_placed_asteroids",[-700,-300,300,700],0.5)
			time = 2
		6:
			emit_signal("set_asteroid_speed",350)
			emit_signal("spawn_dreadnought",top_center)
			emit_signal("move_dreadnought_to",top_center)
			emit_signal("set_dreadnought_scale",4)
			emit_signal("stop_dreadnought_lasers")
			time = 1
		7:
			emit_signal("activate_dreadnought_physics",true)
			emit_signal("start_dreadnought_lasers")
#			emit_signal("set_laser_pattern","everyone",1,0.2,200)
			emit_signal("set_laser_pattern","type2",0.127231,0.05,100)
			time = 4 
		8:
			emit_signal("simetric_random_asteroids",0.5)
			emit_signal("set_laser_pattern","everyone",1,0.2,200)
			time = 2
		9:
			emit_signal("simetric_random_asteroids",0.15)
			emit_signal("set_asteroid_speed",500)
			time = 4
		10:
			emit_signal("normal_random_asteroids",0.1)
			emit_signal("set_laser_pattern","type3",1,0.4,300)
			emit_signal("set_asteroid_speed",600)
			time = 6
		11:
			emit_signal("normal_random_asteroids",0.01)
			emit_signal("set_asteroid_speed",500)
			time = 1
		12:
			emit_signal("normal_random_asteroids",0.1)
			emit_signal("move_dreadnought_to",top_center)
			emit_signal("set_asteroid_speed",800)
			emit_signal("set_laser_pattern","type2",1,0.05,100)
			time = 6
		13:
			emit_signal("normal_random_asteroids",0.3)
			emit_signal("set_asteroid_speed",800)
			emit_signal("set_laser_pattern","type2",0.127231,0.05,100)
			time = 2
		14:
			emit_signal("normal_random_asteroids",0.5)
			emit_signal("set_asteroid_speed",900)
			emit_signal("set_laser_pattern","type3",1,0.1,100)
			time = 2
		15:
			emit_signal("normal_random_asteroids",0.5)
			emit_signal("set_asteroid_speed",800)
			emit_signal("set_laser_pattern","type3",1,0.02,300)
			time = 8
		16:
			emit_signal("normal_random_asteroids",0.4)
			emit_signal("set_asteroid_speed",600)
			emit_signal("set_laser_pattern","type2",0.5,0.03,50)
			time = 16
		17:
			emit_signal("simetric_random_asteroids",0.4)
			emit_signal("set_asteroid_speed",500)
			emit_signal("set_laser_pattern","type3",0.2,0.05,200)
			time = 4
		18:
			emit_signal("simetric_random_asteroids",0.3)
			emit_signal("set_asteroid_speed",600)
			emit_signal("set_laser_pattern","type3",0.2,0.1,200)
			time = 10
		19:
			emit_signal("stop_dreadnought_lasers")
			emit_signal("simetric_random_asteroids",0.3)
			emit_signal("set_asteroid_speed",200)
			time = 8
		20:
			emit_signal("move_dreadnought_to",top_center-40*Vector2.LEFT)
			time = 2
		21:
			emit_signal("move_dreadnought_to",top_center+40*Vector2.LEFT)
			time = 2
		22:
			emit_signal("move_dreadnought_to",top_center-40*Vector2.LEFT)
			time = 0.5
		23:
			emit_signal("move_dreadnought_to",top_center+40*Vector2.LEFT)
			time = 0.5
		24:
			emit_signal("move_dreadnought_to",top_center-60*Vector2.LEFT)
			time = 0.5
		25:
			emit_signal("move_dreadnought_to",top_center+60*Vector2.LEFT)
			time = 0.5
		26:
			emit_signal("move_dreadnought_to",top_left)
			time = 4
		27:
			emit_signal("move_dreadnought_to",bottom_left)
			time = 4
		28:
			emit_signal("move_dreadnought_to",bottom_right)
			time = 4
		29:
			emit_signal("move_dreadnought_to",top_right)
			time = 3
		30:
			emit_signal("move_dreadnought_to",top_left)
			time = 2
		31:
			emit_signal("move_dreadnought_to",bottom_left)
			time = 2
		32:
			emit_signal("move_dreadnought_to",bottom_right)
			time = 2
		33:
			emit_signal("move_dreadnought_to",top_right)
			time = 1.5
		34:
			emit_signal("move_dreadnought_to",top_left)
			time = 1
		35:
			emit_signal("move_dreadnought_to",bottom_left)
			time = 1
		36:
			emit_signal("move_dreadnought_to",bottom_right)
			time = 1
		37:
			emit_signal("move_dreadnought_to",top_right)
			time = 1
		38:
			emit_signal("move_dreadnought_to",top_center)
			time = 1
		39:
			emit_signal("move_dreadnought_to",center)
			time = 4
		40:
			emit_signal("set_laser_pattern","type2",2,0.05,50)
			emit_signal("set_laser_speed",50)
			emit_signal("start_dreadnought_lasers")
			time = 4
		41:
			emit_signal("set_laser_pattern","type2",2,0.05,50)
			emit_signal("set_laser_speed",50)
			time = 10
		42:
			emit_signal("array_placed_asteroids",[-700,-300,300,700],0.5)
			emit_signal("set_laser_pattern","type3",1,0.2,200)
			time = 4
		43:
			emit_signal("array_placed_asteroids",[-600,-300,300,600],0.5)
			time = 2
		44:
			emit_signal("array_placed_asteroids",[-600,-200,200,600],0.5)
			time = 2
		45:
			emit_signal("array_placed_asteroids",[-500,-200,200,500],0.5)
			time = 1
		46:
			emit_signal("array_placed_asteroids",[-600,-300,300,600],0.5)
			time = 1
		47:
			emit_signal("array_placed_asteroids",[-700,-400,400,700],0.3)
			time = 2
		48:
			emit_signal("array_placed_asteroids",[-700,-500,500,700],0.3)
			time = 2
		49:
			emit_signal("array_placed_asteroids",[-700,-600,600,700],0.3)
			emit_signal("stop_dreadnought_lasers")
			time = 2
		50:
			emit_signal("move_dreadnought_to",top_center)
			time = 1
		51:
			emit_signal("normal_random_asteroids",0.01)
			emit_signal("set_asteroid_speed",400)
			time = 5
		52:
			emit_signal("move_dreadnought_to",top_left)
			time = 2
		53:
			emit_signal("move_dreadnought_to",top_center)
			emit_signal("set_asteroid_speed",500)
			time = 2
		54:
			emit_signal("move_dreadnought_to",top_right)
			time = 1
		55:
			emit_signal("move_dreadnought_to",top_center)
			emit_signal("set_asteroid_speed",600)
			time = 2
		56:
			emit_signal("move_dreadnought_to",top_right)
			time = 3
		57:
			emit_signal("set_dreadnought_tension",3)
			emit_signal("move_dreadnought_to",top_left)
			time = 3
		58:
			emit_signal("set_dreadnought_tension",2)
			emit_signal("move_dreadnought_to",top_right)
			time = 3
		59:
			emit_signal("set_dreadnought_tension",7)
			emit_signal("move_dreadnought_to",top_center)
			time = 2
		60:
			emit_signal("move_dreadnought_to",top_left)
			time = 1
		61:
			emit_signal("move_dreadnought_to",top_center)
			time = 1
		62:
			emit_signal("move_dreadnought_to",top_left)
			time = 1
		63:
			emit_signal("set_dreadnought_tension",1)
			emit_signal("move_dreadnought_to",top_right)
			time = 5
		64:
			emit_signal("move_dreadnought_to",left)
			time = 4
		65:
			emit_signal("set_dreadnought_tension",5)
			emit_signal("move_dreadnought_to",center)
			time = 3
		65:
			emit_signal("move_dreadnought_to",right)
			time = 2
		66:
			emit_signal("move_dreadnought_to",center)
			time = 1
		67:
			emit_signal("move_dreadnought_to",left)
			time = 2
		68:
			emit_signal("move_dreadnought_to",center)
			time = 1
		69:
			emit_signal("move_dreadnought_to",left)
			time = 2
		70:
			emit_signal("move_dreadnought_to",center)
			time = 1
		71:
			emit_signal("move_dreadnought_to",right)
			time = 2
		72:
			emit_signal("move_dreadnought_to",center)
			time = 1
		73:
			emit_signal("set_dreadnought_tension",10)
			emit_signal("move_dreadnought_to",top_center)
			emit_signal("set_asteroid_speed",400)
			time = 5
		74:
			emit_signal("set_laser_pattern","type2",0.127231,0.05,100)
			emit_signal("start_dreadnought_lasers")
			external_event_changer(9)
			time = 5
		_:
			_end_times()
	return time

var _test_no = 0
var _test_no_n = 6

var test_events = 0
func _test_events():
	_end_times()
	pass

signal set_asteroid_speed #speed
signal place_asteroids # position time
signal simetric_random_asteroids # time
signal simetric_placed_asteroids # time
signal normal_random_asteroids # time
signal array_placed_asteroids # array[position] time
signal halt_asteroids 
signal restart_asteroids

signal activate_dreadnought_physics(value) #true or false
signal set_dreadnought_light_energy # float
signal set_dreadnought_scale # float 
signal spawn_dreadnought # position
signal delete_dreadnought
signal move_dreadnought_to # position
signal start_dreadnought_lasers
signal stop_dreadnought_lasers
signal set_laser_pattern # type, pattern_time,laser_tme,speed
signal set_laser_pattern_time #time
signal set_laser_time #time
signal set_laser_speed #speed
signal set_dreadnought_tension(value) #float, default=10

signal display_message(message)
signal hide_message

# laser types:
# nearest,everyone,farthest,type1,type2,type3,type4

signal start_gameplay_music

var left         = Vector2(1920/4,1080/2)
var top_left     = Vector2(1920/4,1080/4)
var bottom_left  = Vector2(1920/4,1080*3/4)

var right        = Vector2(1920*3/4,1080/2)
var top_right    = Vector2(1920*3/4,1080/4)
var bottom_right = Vector2(1920*3/4,1080*3/4)

var center        = Vector2(1920/2,1080/2)
var top_center    = Vector2(1920/2,1080/4)
var bottom_center = Vector2(1920/2,1080*3/4)

var in_column_left  = center.x-500
var in_column_right = center.x-500

var top_height    = 1080/4
var bottom_height = 1080*3/4
