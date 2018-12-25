package ru.rocketbank.r2d2.fragments.profile;

import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.model.UserModel;
import ru.rocketbank.core.model.UsernameModel;
import ru.rocketbank.r2d2.RocketConstants;
import ru.rocketbank.r2d2.widgets.recycler.parallax.GenericViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder;
import ru.rocketbank.r2d2.widgets.recycler.parallax.vh.ParallaxItem;

/* compiled from: ProfileFragment.kt */
final class ProfileFragment$fillAdapterWithData$$inlined$let$lambda$14 extends Lambda implements Function2<ParallaxItem, GenericViewHolder, Unit> {
    final /* synthetic */ ProfileFragment this$0;

    ProfileFragment$fillAdapterWithData$$inlined$let$lambda$14(ProfileFragment profileFragment) {
        this.this$0 = profileFragment;
        super(2);
    }

    public final void invoke(ParallaxItem parallaxItem, GenericViewHolder genericViewHolder) {
        boolean isWorks;
        StringBuilder stringBuilder;
        UserModel access$getUserModel$p;
        UsernameModel username;
        String value;
        Intrinsics.checkParameterIsNotNull(parallaxItem, "parallaxItem");
        parallaxItem.setId(ProfileAdapter.Companion.getREFILL_ID());
        UserModel access$getUserModel$p2 = this.this$0.userModel;
        boolean z = false;
        if (access$getUserModel$p2 != null) {
            UsernameModel username2 = access$getUserModel$p2.getUsername();
            if (username2 != null) {
                isWorks = username2.isWorks();
                if (isWorks) {
                    stringBuilder = new StringBuilder();
                    stringBuilder.append(RocketConstants.INSTANCE.getLINK());
                    access$getUserModel$p = this.this$0.userModel;
                    if (access$getUserModel$p != null) {
                        username = access$getUserModel$p.getUsername();
                        if (username != null) {
                            value = username.getValue();
                            stringBuilder.append(value);
                            parallaxItem.setLink(stringBuilder.toString());
                        }
                    }
                    value = null;
                    stringBuilder.append(value);
                    parallaxItem.setLink(stringBuilder.toString());
                }
                if (genericViewHolder != null) {
                    throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder");
                }
                GenericSwitchViewHolder genericSwitchViewHolder = (GenericSwitchViewHolder) genericViewHolder;
                parallaxItem = this.this$0.userModel;
                if (parallaxItem != null) {
                    parallaxItem = parallaxItem.getUsername();
                    if (parallaxItem != null) {
                        z = parallaxItem.isWorks();
                    }
                }
                genericSwitchViewHolder.setEnabled(z);
                return;
            }
        }
        isWorks = false;
        if (isWorks) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(RocketConstants.INSTANCE.getLINK());
            access$getUserModel$p = this.this$0.userModel;
            if (access$getUserModel$p != null) {
                username = access$getUserModel$p.getUsername();
                if (username != null) {
                    value = username.getValue();
                    stringBuilder.append(value);
                    parallaxItem.setLink(stringBuilder.toString());
                }
            }
            value = null;
            stringBuilder.append(value);
            parallaxItem.setLink(stringBuilder.toString());
        }
        if (genericViewHolder != null) {
            GenericSwitchViewHolder genericSwitchViewHolder2 = (GenericSwitchViewHolder) genericViewHolder;
            parallaxItem = this.this$0.userModel;
            if (parallaxItem != null) {
                parallaxItem = parallaxItem.getUsername();
                if (parallaxItem != null) {
                    z = parallaxItem.isWorks();
                }
            }
            genericSwitchViewHolder2.setEnabled(z);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder");
    }
}
