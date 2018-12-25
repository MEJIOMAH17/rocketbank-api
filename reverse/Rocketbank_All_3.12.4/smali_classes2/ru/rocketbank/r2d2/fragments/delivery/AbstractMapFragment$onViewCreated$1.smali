.class public final Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "AbstractMapFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $view:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 2

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;->$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment$onViewCreated$1;->this$0:Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/delivery/AbstractMapFragment;->initMarkerCoordinates()V

    return-void
.end method
