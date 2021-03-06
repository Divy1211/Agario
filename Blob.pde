class Blob {
    PVector position;
    PVector velocity;
    float radius;
    color colour;
    Blob(PVector position, float radius, color colour) {
        this.position = position;
        this.radius = radius;
        this.colour = colour;
        this.velocity = computeVelocity(radius);
    }
    void display() {
        noStroke();
        fill(colour);
        circle(position.x, position.y, radius);
    }
    void move() {
        position.add(velocity);
        if(position.x > width || position.x < 0)
            velocity.x = -velocity.x;
        if(position.y > height || position.y < 0)
            velocity.y = -velocity.y;
    }
    boolean compareSize(Blob blob, float threshold) {
        if(abs(1 - blob.radius/radius) >= 0.1)
            return true;
        return false;
    }
    PVector computeVelocity(float temp_radius) {
        PVector temp_velocity = PVector.random2D();
        temp_velocity.mult(200/temp_radius);
        return temp_velocity;
    }
    //void eat(Blob blob) {

    //}
    //void divide() {

    //}
}
