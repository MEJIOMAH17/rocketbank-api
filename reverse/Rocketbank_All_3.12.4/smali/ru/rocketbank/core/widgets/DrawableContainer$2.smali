.class final Lru/rocketbank/core/widgets/DrawableContainer$2;
.super Ljava/lang/Object;
.source "DrawableContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/DrawableContainer;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/DrawableContainer;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lru/rocketbank/core/widgets/DrawableContainer$2;->this$0:Lru/rocketbank/core/widgets/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 433
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$2;->this$0:Lru/rocketbank/core/widgets/DrawableContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/DrawableContainer;->animate(Z)V

    .line 434
    iget-object v0, p0, Lru/rocketbank/core/widgets/DrawableContainer$2;->this$0:Lru/rocketbank/core/widgets/DrawableContainer;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/DrawableContainer;->invalidateSelf()V

    return-void
.end method
