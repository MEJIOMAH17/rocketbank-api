.class Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$1;
.super Ljava/lang/Object;
.source "CardBlockWidget.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget$1;->this$0:Lru/rocketbank/r2d2/widgets/cardblock/CardBlockWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-double v0, v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-double v2, v2

    .line 47
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-double v4, v4

    sub-double/2addr v4, v0

    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-double v0, p2

    sub-double/2addr v0, v2

    mul-double/2addr v4, v4

    mul-double/2addr v0, v0

    add-double/2addr v4, v0

    .line 50
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-double p1, p1

    cmpl-double v2, v0, p1

    if-lez v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
