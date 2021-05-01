#ifndef GUY_H
#define GUY_H

#include "shape.h"
#include <vector>

struct point {
    double x;
    double y;
};

class Guy : public Shape {
private:
    double size;
    std::vector<point> points;
public:
    /*Constructors*/
    Guy();
    explicit Guy(double size);
    /*Destructors*/
    virtual ~Guy() = default;

    /*Getters*/
    double getSize() const;
    double getLeftX() const override;
    double getRightX() const override;
    double getTopY() const override;
    double getBottomY() const override;
    /*Setters*/
    void setSize(double h);
    /*Draw*/
    void draw() const override;
    /*rotate*/
    void rotate(double tx, double ty);

};

#endif //GUY_H
