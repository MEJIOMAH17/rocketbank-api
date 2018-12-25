.class final Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$2;
.super Ljava/lang/Object;
.source "AdminProfileActivity.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/AdminProfileActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 92
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/AdminProfileActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/activities/AdminProfileActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/AdminProfileActivity;->access$isScroll$p(Lru/rocketbank/r2d2/activities/AdminProfileActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
