.class Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$4;
.super Ljava/lang/Object;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Landroid/app/DatePickerDialog$OnDateSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->onDateClick(Landroid/view/View;)V
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

    .line 221
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$4;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDateSet(Landroid/widget/DatePicker;III)V
    .locals 0

    .line 224
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$4;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-virtual {p1, p2, p3, p4}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setValue(III)V

    return-void
.end method
