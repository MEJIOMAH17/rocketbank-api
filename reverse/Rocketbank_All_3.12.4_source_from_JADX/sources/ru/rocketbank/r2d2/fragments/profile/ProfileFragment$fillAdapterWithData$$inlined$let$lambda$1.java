package ru.rocketbank.r2d2.fragments.profile;

import android.content.Intent;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.r2d2.activities.sound.SoundActivity;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1 extends Lambda implements Function1<ParallaxItem, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(1);
    }

    public final void invoke(ParallaxItem parallaxItem) {
        this.this$0.startActivity(new Intent(this.this$0.getContext(), SoundActivity.class));
    }
}
