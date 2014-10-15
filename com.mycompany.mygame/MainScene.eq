
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
		SESprite forestBG;
		int w;
		int h;
		public static int x;
		public static int y;
		int i;
		
		public void initialize(SEResourceCache rsc)
		{
			base.initialize(rsc);
			w = get_scene_width();
			h = get_scene_height();
			
			add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));

			rsc.prepare_image("myForest", "forest", w, h);
			forestBG = add_sprite_for_image(SEImage.for_resource("myForest"));
			forestBG.move(0, 0);	

			add_entity(new PlayerEntity());
			for(i=0; i<1000; i++){
				add_entity(new MonsterEntity());
			}
		}


		public void on_pointer_move(SEPointerInfo pi) {
			base.on_pointer_move(pi);
			x = pi.get_x();
			y = pi.get_y();
		}

		public void cleanup() {
			base.cleanup();
		}

}
