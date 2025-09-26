# Object Pooling in Godot 4.5

This project is my attempt at implementing **object pooling** in Godot 4.5, with a focus on bullet-hell style gameplay.

I compared two different approaches:

- **Instantiating**: Bullets are created and destroyed (`queue_free()`) on the fly.  
- **Pooling**: A fixed number of bullets are created beforehand and reused. If all bullets are in use, new ones are created only when needed.

---

On my machine, performance started to drop at around **2500 bullets** on screen.  
Before reaching that number, I didn’t notice a significant performance difference between the two approaches. However, it appears that instantiating on the fly has a slightly better performance with high bullet count; most likely due to a **suboptimal implementation** of pooling in this test.

---

## How to Use
1. Open the project in **Godot 4.5**  
2. Inside *levels* folder, you can run either *instancing_scene.tscn* or *pooling_scene.tscn*  
3. Compare how they behave as the number of bullets increases  

---
## Testing!
### Instantiating:
![instantiating_scene](https://github.com/user-attachments/assets/9b691bae-535b-4715-a521-8523d4279aef)

### Pooling:
![pooling_scene](https://github.com/user-attachments/assets/94e6f4ed-5d23-4194-8898-5de5116947d2)

---
This project is mostly experimental and a learning exercise.  
Feel free to **try it out!** 
