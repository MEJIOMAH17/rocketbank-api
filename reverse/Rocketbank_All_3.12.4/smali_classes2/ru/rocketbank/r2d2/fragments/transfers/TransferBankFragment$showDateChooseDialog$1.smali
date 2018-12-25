.class final Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->showDateChooseDialog()V
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

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 787
    :pswitch_0
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$showDatePickerDialog(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    goto :goto_0

    .line 786
    :pswitch_1
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment$showDateChooseDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;->access$showDatePeriodChooseDialog(Lru/rocketbank/r2d2/fragments/transfers/TransferBankFragment;)V

    return-void

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
