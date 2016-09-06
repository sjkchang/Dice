void setup()
{
	size(600, 600);
	noLoop();
}
void draw()
{
	//your code here
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int num;
	int myX, myY;
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
		if (Math.random() < .16)
		{
			num = 1;
		}
		else if (Math.random() < .32)
		{
			num = 2;
		}
		else if (Math.random() < .48) 
		{
			num = 3;
		}
		else if (Math.random() < .64) 
		{
			num = 4;
		}
		else if (Math.random() < .8)
		{
			num = 5;
		}
		else if (Math.random() < .99) 
		{
			num = 6;
		}

	}
	void show()
	{
		//your code here
	}
		
		
}
