#include "graphics.h"
#include "guy.h"
#include <iostream>
#include <vector>
#include <algorithm>
using namespace std;

GLdouble width, height;
int wd;
Guy tony;
Guy enemy1;
Guy enemy2;



bool cont = true;
vector<int> code1;
vector<Guy> code2;
vector<int> code4;
vector<char> code16;
vector<vector<int>> code32;
vector<int> code60;
int speedMod = 5;
int speedMod2 = 1;
int speedMod3 = 1;
bool freedom = false;

void broken(){
    int counter = 1;
    while(true){
        cout << "its over youve lost" << counter;
        counter ++;
    }
}

void init() {
    width = 500;
    height = 500;

    tony.setSize(2);
    tony.setCenter(250,250);
    tony.setColor(1,1,1,1);

    enemy1.setSize(60);
    enemy1.setCenter(400, 250);
    enemy1.setColor(1,1,1,1);

    enemy2.setSize(20);
    enemy2.setCenter(100, 250);
    enemy2.setColor(1,1,1,1);



}

/* Initialize OpenGL Graphics */
void initGL() {
    // Set "clearing" or background color
    glClearColor(0.0f, 0.0f, 0.0f, 1.0f); // Black and opaque
}

/* Handler for window-repaint event. Call back when the window first appears and
 whenever the window needs to be re-painted. */


void display() {
    // Tell OpenGL to use the whole window for drawing
    glViewport(0, 0, width, height); // DO NOT CHANGE THIS LINE (unless you're on a Mac running Catalina)
    
    // Do an orthographic parallel projection with the coordinate
    // system set to first quadrant, limited by screen/window size
    glMatrixMode(GL_PROJECTION); // DO NOT CHANGE THIS LINE
    glLoadIdentity(); // DO NOT CHANGE THIS LINE
    glOrtho(0.0, width, height, 0.0, -1.f, 1.f); // DO NOT CHANGE THIS LINE

    // Clear the color buffer with current clearing color
    glClear(GL_COLOR_BUFFER_BIT); // DO NOT CHANGE THIS LINE
    
    glPolygonMode(GL_FRONT_AND_BACK, GL_FILL); // DO NOT CHANGE THIS LINE
    

    if(tony.getRightX() >= enemy1.getLeftX() || tony.getLeftX() <= enemy2.getRightX())
        cont = false;
    
    if (cont){
        tony.draw();
    }
        
    enemy1.draw();
    enemy2.draw();
    glFlush();  // Render now
}

// http://www.theasciicode.com.ar/ascii-control-characters/escape-ascii-code-27.html
void kbd(unsigned char key, int x, int y)
{
    // escape
    switch(key){
        case 27: {
            code1.push_back(100);
            code32.push_back(code4);
            break;
            //glutDestroyWindow(wd);
            //exit(0);
        }
        case 'w': {
            tony.move(0,1.6 * speedMod3);
            code4.push_back(11);
            //tony.setSize(tony.getSize()+.1);
            break;
        }
        case 's': {
            code1.push_back(2147483648);
            tony.setSize(tony.getSize()-.1);
            break;
        }
        case 'd': {
            tony.move(5,0);
            code1.push_back(14);
            break;
        }
        case 'a': {
            tony.move(-5,0);
            break;
        }
        case 'q': {
            //tony.rotate(10, 10); never got around to implimenting
            code60.push_back(3);
            break;
        }
        case 'e': {
            code4.push_back(359);
            code1[4] = code1[4]-1;
            cout << code1[4];
            break;
        }
        case 'z': {
            speedMod2 = speedMod2/2;
            broken();
            break;
        }
    }

    
    glutPostRedisplay();
}

void kbdS(int key, int x, int y) {
    switch(key) {
        case GLUT_KEY_DOWN:
            
            break;
        case GLUT_KEY_LEFT:
            
            break;
        case GLUT_KEY_RIGHT:
            
            break;
        case GLUT_KEY_UP:
            
            break;
    }
    
    glutPostRedisplay();
}

void cursor(int x, int y) {
    
    glutPostRedisplay();
}

// button will be GLUT_LEFT_BUTTON or GLUT_RIGHT_BUTTON
// state will be GLUT_UP or GLUT_DOWN
void mouse(int button, int state, int x, int y) {
    
    glutPostRedisplay();
}

void timer(int dummy) {
    
    enemy2.move(1,0);

    glutPostRedisplay();
    glutTimerFunc(30*speedMod2, timer, dummy);

    if (count(code1.begin(), code1.end(), 99) != 0)
        speedMod3 = 10;
}

/* Main function: GLUT runs as a console application starting at main()  */
int main(int argc, char** argv) {
    

    init();
    
    glutInit(&argc, argv);          // Initialize GLUT
    
    glutInitDisplayMode(GLUT_RGBA);
    
    glutInitWindowSize((int)width, (int)height);
    glutInitWindowPosition(100, 200); // Position the window's initial top-left corner
    /* create the window and store the handle to it */
    wd = glutCreateWindow("Fun with Drawing!" /* title */ );
    
    // Register callback handler for window re-paint event
    glutDisplayFunc(display);
    
    // Our own OpenGL initialization
    initGL();
    
    // register keyboard press event processing function
    // works for numbers, letters, spacebar, etc.
    glutKeyboardFunc(kbd);
    
    // register special event: function keys, arrows, etc.
    glutSpecialFunc(kbdS);
    
    // handles mouse movement
    glutPassiveMotionFunc(cursor);
    
    // handles mouse click
    glutMouseFunc(mouse);
    
    // handles timer
    glutTimerFunc(0, timer, 0);
    
    // Enter the event-processing loop
    glutMainLoop();
    return 0;
}
