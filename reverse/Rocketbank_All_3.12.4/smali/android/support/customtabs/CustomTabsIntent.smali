.class public final Landroid/support/customtabs/CustomTabsIntent;
.super Ljava/lang/Object;
.source "CustomTabsIntent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/customtabs/CustomTabsIntent$Builder;
    }
.end annotation


# instance fields
.field public final intent:Landroid/content/Intent;

.field public final startAnimationBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/4 p1, 0x0

    .line 267
    iput-object p1, p0, Landroid/support/customtabs/CustomTabsIntent;->startAnimationBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Intent;B)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Landroid/support/customtabs/CustomTabsIntent;-><init>(Landroid/content/Intent;)V

    return-void
.end method
