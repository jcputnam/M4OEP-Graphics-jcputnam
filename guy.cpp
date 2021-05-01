#include "guy.h"
#include "graphics.h"
#include "cmath"


/*void Guy::draw_point(const point &p) const {
    glVertex2i(p.x, p.y);
}*/

Guy::Guy() : Shape(), size(0) {
}

Guy::Guy(double size) : Shape() {
    setSize(size);
}

double Guy::getSize() const{
    return size;
}

double Guy::getLeftX() const{
    return center.x - 10;
}
double Guy::getRightX() const{
    return center.x + 10;
}
double Guy::getTopY() const{
    return center.x + 10*size;
}
double Guy::getBottomY() const{
    return center.x - 10*size;
}

void Guy::setSize(double h){
    if (h<0)
        h = 0;
    size = h;
}



void Guy::draw() const{
    glColor3f(1,1,1);
    glBegin(GL_LINE_LOOP);
    //glVertex2i(center.x, center.y);
    glVertex2i(center.x+10, center.y+10*size);
    glVertex2i(center.x+2, center.y);
    glVertex2i(center.x+10, center.y-10*size);
    glVertex2i(center.x-10, center.y-10*size);
    glVertex2i(center.x-2, center.y);
    glVertex2i(center.x-10, center.y+10*size);
    /*
    glBegin(GL_TRIANGLE_FAN);
    glVertex2i(center.x, center.y);
    //draw points
    for (int i = 0; i < 100; ++i){
        glVertex2i(i*10, i*10);
        glVertex2i(i*10-4*i, i*10+4*i);
    }*/
    glEnd();
}
