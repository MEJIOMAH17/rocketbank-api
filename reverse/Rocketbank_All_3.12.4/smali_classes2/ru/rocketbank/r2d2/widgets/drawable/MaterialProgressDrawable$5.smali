.class Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;
.super Ljava/lang/Object;
.source "MaterialProgressDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 328
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->invalidateSelf()V

    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 0

    .line 332
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-virtual {p1, p2, p3, p4}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 0

    .line 336
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable$5;->this$0:Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/widgets/drawable/MaterialProgressDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
