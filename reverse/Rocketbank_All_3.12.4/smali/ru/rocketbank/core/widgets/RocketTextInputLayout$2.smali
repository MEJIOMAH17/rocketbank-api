.class final Lru/rocketbank/core/widgets/RocketTextInputLayout$2;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "RocketTextInputLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketTextInputLayout;->setError(Ljava/lang/CharSequence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 0

    .line 451
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$2;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationStart(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    .line 454
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
