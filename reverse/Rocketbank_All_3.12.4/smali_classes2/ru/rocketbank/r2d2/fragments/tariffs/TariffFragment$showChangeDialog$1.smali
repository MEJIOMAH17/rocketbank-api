.class final Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$1;
.super Ljava/lang/Object;
.source "TariffFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->showChangeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 192
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment$showChangeDialog$1;->this$0:Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;->access$changeTariff(Lru/rocketbank/r2d2/fragments/tariffs/TariffFragment;)V

    return-void
.end method
