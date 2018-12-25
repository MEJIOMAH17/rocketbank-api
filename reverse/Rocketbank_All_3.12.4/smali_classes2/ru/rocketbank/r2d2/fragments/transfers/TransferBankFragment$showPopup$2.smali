.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$2;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showPopup(Landroid/widget/ImageButton;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 606
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showPopup$2;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$hidePopup(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    const/4 p1, 0x0

    return p1
.end method
