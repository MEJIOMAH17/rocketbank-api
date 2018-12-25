.class public interface abstract Lru/rocketbank/r2d2/widgets/RocketDrawer;
.super Ljava/lang/Object;
.source "RocketDrawer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getFragmentClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFragmentTag()Ljava/lang/String;
.end method

.method public abstract getOnDrawerItemClickListener()Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;
.end method

.method public abstract withFragment(Ljava/lang/Class;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;)TT;"
        }
    .end annotation
.end method

.method public abstract withFragment(Ljava/lang/Class;Ljava/lang/String;)Lcom/mikepenz/materialdrawer/model/BaseDrawerItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method
