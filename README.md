# Object Pooling in Godot 4.5

This project is my attempt at implementing **object pooling** in Godot 4.5, with a focus on bullet-hell style gameplay.

I compared two different approaches:

- **Instantiating**: Bullets are created and destroyed (`queue_free()`) on the fly.  
- **Pooling**: A fixed number of bullets are created beforehand and reused. If all bullets are in use, new ones are created only when needed.

---

On my machine, performance started to drop at around **2500 bullets** on screen.  
Before reaching that number, I didn’t notice a significant performance difference between the two approaches: most likely due to a **suboptimal implementation** of pooling in this test.

---

## How to Use
1. Open the project in **Godot 4.5**  
2. Inside *levels* folder, you can run either *instancing_scene.tscn* or *pooling_scene.tscn*  
3. Compare how they behave as the number of bullets increases  

---

This project is mostly experimental and a learning exercise.  
Feel free to **try it out, share your results, and suggest improvements!** 
