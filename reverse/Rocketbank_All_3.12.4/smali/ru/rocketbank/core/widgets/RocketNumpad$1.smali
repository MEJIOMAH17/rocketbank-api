.class final Lru/rocketbank/core/widgets/RocketNumpad$1;
.super Ljava/lang/Object;
.source "RocketNumpad.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketNumpad;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $childFragment:Landroid/view/View;

.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketNumpad;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketNumpad;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad$1;->this$0:Lru/rocketbank/core/widgets/RocketNumpad;

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketNumpad$1;->$childFragment:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 49
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad$1;->this$0:Lru/rocketbank/core/widgets/RocketNumpad;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketNumpad;->access$get_listener$p(Lru/rocketbank/core/widgets/RocketNumpad;)Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 50
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketNumpad$1;->this$0:Lru/rocketbank/core/widgets/RocketNumpad;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketNumpad;->access$get_listener$p(Lru/rocketbank/core/widgets/RocketNumpad;)Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketNumpad$1;->$childFragment:Landroid/view/View;

    check-cast v0, Lru/rocketbank/core/widgets/RocketNumpadButton;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketNumpadButton;->getNumber()I

    move-result v0

    invoke-interface {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;->onNumber(I)V

    :cond_1
    return-void
.end method
