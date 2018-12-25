.class final Lru/rocketbank/core/widgets/CreditCardView$init$1;
.super Ljava/lang/Object;
.source "CreditCardView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CreditCardView;->init$23ad5828(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/CreditCardView;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CreditCardView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/CreditCardView$init$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lru/rocketbank/core/widgets/CreditCardView$init$1;->this$0:Lru/rocketbank/core/widgets/CreditCardView;

    invoke-static {v0}, Lru/rocketbank/core/widgets/CreditCardView;->access$getEditTextCardNumber$p(Lru/rocketbank/core/widgets/CreditCardView;)Lru/rocketbank/core/widgets/RocketEditText;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->requestFocus()Z

    return-void
.end method
