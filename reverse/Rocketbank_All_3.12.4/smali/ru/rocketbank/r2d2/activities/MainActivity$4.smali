.class Lru/rocketbank/r2d2/activities/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$4;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 196
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$4;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$300(Lru/rocketbank/r2d2/activities/MainActivity;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    .line 199
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$4;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$400(Lru/rocketbank/r2d2/activities/MainActivity;)V

    return-void
.end method
