.class Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$2;
.super Ljava/lang/Object;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$2;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$2;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->onTimeClick(Landroid/view/View;)V

    return-void
.end method
