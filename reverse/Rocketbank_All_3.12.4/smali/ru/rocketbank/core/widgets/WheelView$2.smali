.class final Lru/rocketbank/core/widgets/WheelView$2;
.super Landroid/graphics/drawable/Drawable;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/WheelView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/WheelView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/WheelView;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 331
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v0, v0, Lru/rocketbank/core/widgets/WheelView;->viewWidth:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v2, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/WheelView;->access$100(Lru/rocketbank/core/widgets/WheelView;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v0, v0, Lru/rocketbank/core/widgets/WheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v4, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/WheelView;->access$100(Lru/rocketbank/core/widgets/WheelView;)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget-object v6, v0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 332
    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v0, v0, Lru/rocketbank/core/widgets/WheelView;->viewWidth:I

    div-int/lit8 v0, v0, 0x6

    int-to-float v2, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/WheelView;->access$100(Lru/rocketbank/core/widgets/WheelView;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v3, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget v0, v0, Lru/rocketbank/core/widgets/WheelView;->viewWidth:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x6

    int-to-float v4, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/WheelView;->access$100(Lru/rocketbank/core/widgets/WheelView;)[I

    move-result-object v0

    aget v0, v0, v1

    int-to-float v5, v0

    iget-object v0, p0, Lru/rocketbank/core/widgets/WheelView$2;->this$0:Lru/rocketbank/core/widgets/WheelView;

    iget-object v6, v0, Lru/rocketbank/core/widgets/WheelView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public final getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
