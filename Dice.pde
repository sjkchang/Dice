int dieTotal = 0;
void setup()
{
	size(300, 300);
	noLoop();
}
void draw()
{
	//your code here
	
	
	background(0);
	for(int x = 50; x < 250; x = x + 80)
	for(int y = 40; y < 250; y = y + 80)
	{
		Die die1 = new Die(x, y);
		die1.show();
		die1.roll();
	}
	//dietotal = dieTotal + die1.value;
	System.out.println(dieTotal);
	text(" Total:" + dieTotal + " ", 150, 280);

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	int myX, myY, value;
	Die(int x, int y) //constructor
	{
		//variable initializations here
		myX = x;
		myY = y;
		value = (int)(Math.random()*6) + 1;

	} 
	void roll()
	{
		//your code here

		if(value == 1)
		{
			ellipse(myX + 25, myY + 25, 10, 10);
			dieTotal = dieTotal += 1;
		}
		if(value == 2)
		{
			ellipse(myX + 15, myY+ 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			dieTotal = dieTotal + 2;
		}
		if(value == 3)
		{
			ellipse(myX + 15, myY + 15, 10, 10);
			ellipse(myX + 35, myY + 35, 10, 10);
			ellipse(myX + 25, myY + 25, 10, 10);
			dieTotal = dieTotal += 3;

		}
		if(value == 4)
		{
			ellipse(myX + 12.5, myY + 12.5, 10, 10);
			ellipse(myX + 37.5, myY + 37.5, 10, 10);
			ellipse(myX + 37.5, myY + 12.5, 10, 10);
			ellipse(myX + 12.5, myY + 37.5, 10, 10);
			dieTotal = dieTotal += 4;
		}
		if(value == 5)
		{
			ellipse(myX + 25, myY + 25, 10, 10);
			ellipse(myX + 12.5, myY + 12.5, 10, 10);
			ellipse(myX + 37.5, myY + 37.5, 10, 10);
			ellipse(myX + 37.5, myY + 12.5, 10, 10);
			ellipse(myX + 12.5, myY + 37.5, 10, 10);
			dieTotal = dieTotal += 5;
		}
		if(value == 6)
		{
			ellipse(myX + 12.5, myY + 12.5, 10, 10);
			ellipse(myX + 37.5, myY + 37.5, 10, 10);
			ellipse(myX + 37.5, myY + 12.5, 10, 10);
			ellipse(myX + 12.5, myY + 37.5, 10, 10);
			ellipse(myX + 12.5, myY + 25 ,10, 10);
			ellipse(myX + 37.5, myY + 25, 10, 10);
			dieTotal = dieTotal += 6;
		}
			fill(255);
			

	}
	void show()
	{
		//your code here
		rect(myX, myY, 50, 50);
		fill(0);
	}
		
		
}
