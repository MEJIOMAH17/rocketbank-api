.class Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$5;
.super Ljava/lang/Object;
.source "RocketDatePaymentWidget.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->onTimeClick(Landroid/view/View;)V
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

    .line 239
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$5;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 0

    .line 242
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget$5;->this$0:Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->access$000(Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;II)V

    return-void
.end method
