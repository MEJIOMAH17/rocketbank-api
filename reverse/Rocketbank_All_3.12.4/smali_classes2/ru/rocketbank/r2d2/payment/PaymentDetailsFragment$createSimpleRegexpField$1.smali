.class final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;
.super Ljava/lang/Object;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->createSimpleRegexpField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $field:Lru/rocketbank/core/model/provider/ProviderField;

.field final synthetic this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPickContactRequested()V
    .locals 4

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    .line 278
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->setPendingField(Lru/rocketbank/core/model/provider/ProviderField;)V

    .line 281
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x1

    .line 282
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    .line 283
    invoke-static {}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$getPERMISSIONS_READ_CONTACT$cp()I

    move-result v2

    .line 281
    invoke-static {v0, v1, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void

    .line 285
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$pickContact(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/ProviderField;)V

    return-void

    .line 288
    :cond_3
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->this$0:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;->$field:Lru/rocketbank/core/model/provider/ProviderField;

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->access$pickContact(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/ProviderField;)V

    return-void
.end method
