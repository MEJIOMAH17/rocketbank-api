.class public abstract Landroid/support/v7/app/ActionBar;
.super Ljava/lang/Object;
.source "ActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/ActionBar$LayoutParams;,
        Landroid/support/v7/app/ActionBar$Tab;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeOptionsMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public collapseActionView()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    return-void
.end method

.method public abstract getDisplayOptions()I
.end method

.method public abstract getHeight()I
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidateOptionsMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    return-void
.end method

.method onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public onMenuKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public openOptionsMenu()Z
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public abstract setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    return-void
.end method

.method public abstract setDisplayHomeAsUpEnabled(Z)V
.end method

.method public abstract setDisplayShowHomeEnabled$1385ff()V
.end method

.method public setElevation$133aeb()V
    .locals 0

    return-void
.end method

.method public setHideOnContentScrollEnabled$1385ff()V
    .locals 2

    .line 966
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Hide on content scroll is not supported in this action bar configuration."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHomeActionContentDescription(I)V
    .locals 0

    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    return-void
.end method

.method public abstract setTitle(I)V
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    return-void
.end method

.method public startActionMode(Landroid/support/v7/view/ActionMode$Callback;)Landroid/support/v7/view/ActionMode;
    .locals 0
    .annotation build Landroid/support/annotation/RestrictTo;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method
