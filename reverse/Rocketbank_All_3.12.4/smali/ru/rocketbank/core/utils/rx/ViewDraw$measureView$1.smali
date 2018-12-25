.class final Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;
.super Ljava/lang/Object;
.source "ViewDraw.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/utils/rx/ViewDraw;->measureView(Landroid/view/View;II)Lrx/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic $height:I

.field final synthetic $width:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    iput p1, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$width:I

    iput p2, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call(Landroid/view/View;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 20
    iget v0, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$width:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 21
    iget v2, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$height:I

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 23
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->measure(II)V

    .line 24
    iget v0, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$width:I

    iget v1, p0, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->$height:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    return-object p1
.end method

.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lru/rocketbank/core/utils/rx/ViewDraw$measureView$1;->call(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
