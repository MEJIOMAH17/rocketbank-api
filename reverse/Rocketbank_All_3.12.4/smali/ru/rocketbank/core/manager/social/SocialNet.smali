.class public interface abstract Lru/rocketbank/core/manager/social/SocialNet;
.super Ljava/lang/Object;
.source "SocialNet.kt"


# virtual methods
.method public abstract authorize(Landroid/support/v4/app/Fragment;Lru/rocketbank/core/manager/social/SocialNetCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            "Lru/rocketbank/core/manager/social/SocialNetCallback<",
            "Lru/rocketbank/core/manager/social/SocialUserModel;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract getAvatarID()Ljava/lang/String;
.end method

.method public abstract onActivityResult(IILandroid/content/Intent;)V
.end method
