.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$processFatalRegexpError$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->processFatalRegexpError()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$processFatalRegexpError$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final OnPositive()V
    .locals 1

    .line 339
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$processFatalRegexpError$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->moveBack()V

    return-void
.end method
