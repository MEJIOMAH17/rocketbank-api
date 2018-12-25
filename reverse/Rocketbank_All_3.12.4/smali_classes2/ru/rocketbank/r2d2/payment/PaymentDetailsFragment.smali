.class public final Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;
.super Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;
.source "PaymentDetailsFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;
.implements Lru/rocketbank/r2d2/payment/SharedTransitionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPaymentDetailsFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PaymentDetailsFragment.kt\nru/rocketbank/r2d2/payment/PaymentDetailsFragment\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,422:1\n624#2:423\n713#2,2:424\n1519#2,2:426\n49#3,2:428\n*E\n*S KotlinDebug\n*F\n+ 1 PaymentDetailsFragment.kt\nru/rocketbank/r2d2/payment/PaymentDetailsFragment\n*L\n153#1:423\n153#1,2:424\n154#1,2:426\n199#1,2:428\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;

.field private static final PERMISSIONS_READ_CONTACT:I = 0x11

.field private static final PICK_CONTACT_REQUEST:I = 0x12


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final _paymentFields:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;",
            ">;"
        }
    .end annotation
.end field

.field private buttonNextView:Landroid/view/View;

.field private cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

.field private imageViewIcon:Landroid/widget/ImageView;

.field private operatorSubscription:Lrx/Subscription;

.field private pendingField:Lru/rocketbank/core/model/provider/ProviderField;

.field private pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

.field private provider:Lru/rocketbank/core/model/provider/Provider;

.field public providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

.field private root:Landroid/view/View;

.field private template:Lru/rocketbank/core/model/transfers/Template;

.field private textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

.field private textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

.field public toolbar:Landroid/support/v7/widget/Toolbar;

.field public toolbarShadow:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->Companion:Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public static final synthetic access$checkProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->checkProvider()V

    return-void
.end method

.method public static final synthetic access$getPERMISSIONS_READ_CONTACT$cp()I
    .locals 1

    .line 41
    sget v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->PERMISSIONS_READ_CONTACT:I

    return v0
.end method

.method public static final synthetic access$getProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Lru/rocketbank/core/model/provider/Provider;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    return-object p0
.end method

.method public static final synthetic access$getTemplate$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Lru/rocketbank/core/model/transfers/Template;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-object p0
.end method

.method public static final synthetic access$get_paymentFields$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)Ljava/util/LinkedHashMap;
    .locals 0

    .line 41
    iget-object p0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    return-object p0
.end method

.method public static final synthetic access$pickContact(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContact(Lru/rocketbank/core/model/provider/ProviderField;)V

    return-void
.end method

.method public static final synthetic access$setProvider$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/Provider;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    return-void
.end method

.method public static final synthetic access$setTemplate$p(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/transfers/Template;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    return-void
.end method

.method public static final synthetic access$updateProvider(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->updateProvider()V

    return-void
.end method

.method private final checkProvider()V
    .locals 2

    .line 379
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->isAllFieldsValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->buttonNextView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void

    .line 382
    :cond_2
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getPaymentProvider()Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    .line 383
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->updateProvider()V

    .line 384
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->buttonNextView:Landroid/view/View;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private final createDateField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z
    .locals 2

    .line 238
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    .line 239
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setProviderField(Lru/rocketbank/core/model/provider/ProviderField;)V

    .line 241
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 242
    move-object p1, p0

    check-cast p1, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketDatePaymentWidget;->setOnPaymentFieldChangedListener(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;)V

    .line 243
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method private final createSimpleRegexpField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z
    .locals 4

    .line 268
    new-instance v0, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;-><init>(Landroid/content/Context;)V

    .line 269
    invoke-virtual {v0, p2}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setField(Lru/rocketbank/core/model/provider/ProviderField;)V

    .line 270
    invoke-virtual {v0}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->hasFatalRegexpError()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;

    invoke-direct {v1, p0, p2}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$createSimpleRegexpField$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/model/provider/ProviderField;)V

    check-cast v1, Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setPickContactListener(Lru/rocketbank/r2d2/payment/RocketPaymentEditText$OnPickContactListener;)V

    .line 292
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setOnPaymentFieldChangedListener(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget$OnPaymentFieldChangedListener;)V

    .line 293
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 294
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz p1, :cond_3

    .line 297
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/core/model/transfers/Template;->provider:Lru/rocketbank/core/model/transfers/Template$ProviderPayment;

    const-string v1, "template!!.provider"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment;->getFields()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;

    .line 298
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "templateField"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 299
    invoke-virtual {v1}, Lru/rocketbank/core/model/transfers/Template$ProviderPayment$FieldPayment;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 303
    :cond_3
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 304
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/payment/RocketPaymentEditText;->setValue(Ljava/lang/String;)V

    :cond_6
    const/4 p1, 0x1

    return p1
.end method

.method private final getPhones(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 224
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "data1"

    .line 225
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "number"

    .line 227
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "8"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 228
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const-string v2, "number"

    .line 231
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "\\+7"

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, "-"

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const-string v2, " "

    new-instance v3, Lkotlin/text/Regex;

    invoke-direct {v3, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v3, v1, v2}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    :cond_1
    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final isAllFieldsValid()Z
    .locals 3

    .line 390
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 391
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    const-string v2, "paymentField"

    .line 394
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->isValid()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private final onPermission([Ljava/lang/String;[I)V
    .locals 2

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 254
    array-length v1, p2

    if-nez v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    xor-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 255
    aget p1, p2, p1

    if-nez p1, :cond_1

    .line 256
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pendingField:Lru/rocketbank/core/model/provider/ProviderField;

    if-eqz p1, :cond_1

    .line 257
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContact(Lru/rocketbank/core/model/provider/ProviderField;)V

    const/4 p1, 0x0

    .line 258
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pendingField:Lru/rocketbank/core/model/provider/ProviderField;

    return-void

    :cond_1
    return-void
.end method

.method private final pickContact(Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 3

    .line 313
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    .line 315
    :try_start_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sget v1, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->PICK_CONTACT_REQUEST:I

    invoke-virtual {p1, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    return-void
.end method

.method private final processFatalRegexpError()V
    .locals 3

    .line 337
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "\u041f\u0440\u043e\u0438\u0437\u043e\u0448\u043b\u0430 \u043e\u0448\u0438\u0431\u043a\u0430 \u043f\u0440\u0438 \u0437\u0430\u0433\u0440\u0443\u0437\u043a\u0435 \u0434\u0430\u043d\u043d\u044b\u0445. \u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0441\u043e\u043e\u0431\u0449\u0438\u0442\u0435 \u0432 \u043f\u043e\u0434\u0434\u0435\u0440\u0436\u043a\u0443 \u0442\u0438\u043f \u043f\u043b\u0430\u0442\u0435\u0436\u0430."

    .line 339
    new-instance v2, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$processFatalRegexpError$1;

    invoke-direct {v2, p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$processFatalRegexpError$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    check-cast v2, Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;

    .line 337
    invoke-static {v0, v1, v2}, Lru/rocketbank/r2d2/Utils;->showAlert(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Lru/rocketbank/r2d2/fragments/AlertDialogFragment$OnPositiveListener;)V

    return-void
.end method

.method private final updateProvider()V
    .locals 3

    .line 172
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->imageViewIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v1}, Lru/rocketbank/core/model/provider/Provider;->getIcon()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-static {v0, v1, v2}, Lru/rocketbank/core/utils/ImageHelper;->loadRound(Landroid/widget/ImageView;Ljava/lang/String;Ljp/wasabeef/glide/transformations/CropCircleTransformation;)V

    .line 173
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v0, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    iget-object v1, v1, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    if-nez v0, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    iget-object v0, v0, Lru/rocketbank/core/model/transfers/Template;->title:Ljava/lang/String;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_8
    invoke-virtual {v1}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_f

    .line 177
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_9
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v1, :cond_a

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_a
    invoke-virtual {v1}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    return-void

    .line 181
    :cond_c
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_d
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez v1, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v1}, Lru/rocketbank/core/model/provider/Provider;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final clearTransitionNames()V
    .locals 2

    .line 158
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 159
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->imageViewIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final getPendingField()Lru/rocketbank/core/model/provider/ProviderField;
    .locals 1

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pendingField:Lru/rocketbank/core/model/provider/ProviderField;

    return-object v0
.end method

.method public final getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;
    .locals 2

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez v0, :cond_0

    const-string v1, "providersApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbar()Landroid/support/v7/widget/Toolbar;
    .locals 2

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez v0, :cond_0

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolbarShadow()Landroid/view/View;
    .locals 2

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbarShadow:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v1, "toolbarShadow"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final moveBack()V
    .locals 2

    .line 343
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    .line 344
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorNavigationDrawer(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 9

    .line 186
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    sget v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->PICK_CONTACT_REQUEST:I

    if-ne p1, v0, :cond_e

    const/4 p1, -0x1

    if-ne p2, p1, :cond_e

    .line 188
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v0, "android.permission.READ_CONTACTS"

    invoke-static {p2, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-ne p2, p1, :cond_1

    return-void

    .line 194
    :cond_1
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    if-nez p1, :cond_2

    return-void

    :cond_2
    if-nez p3, :cond_3

    .line 197
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 199
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    check-cast p1, Ljava/io/Closeable;

    const/4 p2, 0x0

    :try_start_0
    move-object p3, p1

    check-cast p3, Landroid/database/Cursor;

    .line 200
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "_id"

    .line 201
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 202
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const-string v0, "contact_id = "

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p3

    check-cast p3, Ljava/io/Closeable;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    move-object v0, p3

    check-cast v0, Landroid/database/Cursor;

    const-string v1, "phonesCursor"

    .line 203
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getPhones(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    .line 205
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 206
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v2, "\u0423 \u0432\u044b\u0431\u0440\u0430\u043d\u043d\u043e\u0433\u043e \u043a\u043e\u043d\u0442\u0430\u043a\u0442\u0430 \u043d\u0435 \u0443\u043a\u0430\u0437\u0430\u043d \u043d\u043e\u043c\u0435\u0440"

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz v1, :cond_7

    const-string v0, ""

    .line 207
    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->setValue(Ljava/lang/String;)V

    :cond_7
    if-eqz v1, :cond_c

    .line 208
    invoke-interface {v1}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->clearError()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 209
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v4, 0x0

    if-ne v2, v3, :cond_9

    if-eqz v1, :cond_c

    .line 210
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->setValue(Ljava/lang/String;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_0

    .line 212
    :cond_9
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v3, v0

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_a

    .line 428
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.util.Collection<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 429
    :cond_a
    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_b

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    check-cast v3, [Ljava/lang/CharSequence;

    .line 213
    new-instance v4, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;

    invoke-direct {v4, v1, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onActivityResult$1$1$1;-><init>(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;Ljava/util/List;)V

    check-cast v4, Landroid/content/DialogInterface$OnClickListener;

    .line 212
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :cond_c
    :goto_0
    :try_start_2
    invoke-static {p3, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, p2

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    :try_start_4
    invoke-static {p3, v1}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 217
    :cond_d
    :goto_2
    sget-object p3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 199
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p3

    goto :goto_3

    :catch_1
    move-exception p2

    :try_start_5
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    invoke-static {p1, p2}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3

    :cond_e
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getProvidersApi()Lru/rocketbank/core/network/api/ProvidersApi;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    .line 65
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance p1, Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Ljp/wasabeef/glide/transformations/CropCircleTransformation;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->cropCircleTransformation:Ljp/wasabeef/glide/transformations/CropCircleTransformation;

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lru/rocketbank/r2d2/Utils;->setActionBarUpIndicatorBack(Landroid/app/Activity;)V

    const/4 v0, 0x0

    const v1, 0x7f0c00f0

    .line 73
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0903d8

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v7.widget.Toolbar"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Landroid/support/v7/widget/Toolbar;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    const p2, 0x7f0903dc

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    const-string v1, "rootView.findViewById(R.id.toolbarShadow)"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbarShadow:Landroid/view/View;

    .line 78
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbarShadow:Landroid/view/View;

    if-nez p2, :cond_1

    const-string v1, "toolbarShadow"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    const/16 v1, 0x8

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_0
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 79
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    if-nez p2, :cond_3

    const-string v1, "toolbar"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->setToolbarActionBar(Landroid/support/v7/widget/Toolbar;)V

    if-eqz p3, :cond_4

    const-string p2, "payment_provider"

    .line 82
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/provider/Provider;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    const-string p2, "key_pick_contact_field"

    .line 83
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/model/provider/ProviderField;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    .line 85
    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p2, :cond_5

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getPaymentProvider()Lru/rocketbank/core/model/provider/Provider;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    .line 89
    :cond_5
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-eqz p2, :cond_9

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_6
    const-string p3, "payment"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 90
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_7
    const-string p3, "payment"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-nez p2, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.transfers.Template"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Lru/rocketbank/core/model/transfers/Template;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->template:Lru/rocketbank/core/model/transfers/Template;

    .line 93
    :cond_9
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p2, :cond_a

    return-object p1

    :cond_a
    const p2, 0x7f0901d3

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_b

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->imageViewIcon:Landroid/widget/ImageView;

    const p2, 0x7f0902fb

    .line 99
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->root:Landroid/view/View;

    const p2, 0x7f0903a9

    .line 101
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_c

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    const p2, 0x7f09039a

    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_d

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    check-cast p2, Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewDescription:Lru/rocketbank/core/widgets/RocketTextView;

    .line 103
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->updateProvider()V

    .line 105
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p2, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {p2}, Lru/rocketbank/core/model/provider/Provider;->getFields()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_19

    const p2, 0x7f09008a

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_f

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.Button"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    check-cast p2, Landroid/widget/Button;

    const p3, 0x7f110314

    .line 107
    invoke-virtual {p2, p3}, Landroid/widget/Button;->setText(I)V

    .line 108
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 110
    check-cast p2, Landroid/view/View;

    iput-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->buttonNextView:Landroid/view/View;

    .line 112
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->buttonNextView:Landroid/view/View;

    if-nez p2, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    new-instance p3, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;

    invoke-direct {p3, p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onCreateView$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;)V

    check-cast p3, Landroid/view/View$OnClickListener;

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09040a

    .line 121
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_11

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_11
    check-cast p2, Landroid/widget/LinearLayout;

    .line 123
    iget-object p3, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-nez p3, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_12
    invoke-virtual {p3}, Lru/rocketbank/core/model/provider/Provider;->getFields()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_13
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/provider/ProviderField;

    const-string v1, "field"

    .line 124
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/ProviderField;->getField_kind()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_2

    :cond_14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5bc9514c

    if-eq v2, v3, :cond_17

    const v3, 0x65b3d6e

    if-eq v2, v3, :cond_16

    const v3, 0x6ac9171

    if-eq v2, v3, :cond_15

    goto :goto_2

    :cond_15
    const-string v2, "value"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_1

    :cond_16
    const-string v2, "phone"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 126
    :goto_1
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->createSimpleRegexpField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z

    move-result v0

    goto :goto_3

    :cond_17
    const-string v2, "paymentdate"

    .line 124
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 125
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->createDateField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z

    move-result v0

    goto :goto_3

    .line 127
    :cond_18
    :goto_2
    invoke-direct {p0, p2, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->createSimpleRegexpField(Landroid/widget/LinearLayout;Lru/rocketbank/core/model/provider/ProviderField;)Z

    move-result v0

    :goto_3
    if-nez v0, :cond_13

    .line 130
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->processFatalRegexpError()V

    const/4 p1, 0x0

    return-object p1

    .line 135
    :cond_19
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->clearTransitionNames()V

    .line 136
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance p3, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;

    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->imageViewIcon:Landroid/widget/ImageView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    check-cast v2, Landroid/view/View;

    invoke-direct {p3, v0, v1, v2}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 332
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->operatorSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 333
    invoke-super {p0}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onPause()V

    return-void
.end method

.method public final onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V
    .locals 2

    const-string v0, "field"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "widget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 350
    invoke-interface {p2}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->clearError()V

    .line 351
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->buttonNextView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 355
    :cond_0
    invoke-virtual {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->getPaymentProvider()Lru/rocketbank/core/model/provider/Provider;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/Provider;->getId()I

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "number"

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->isValid()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 356
    sget-object p1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getDataManager()Lru/rocketbank/core/manager/DataManager;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->operatorSubscription:Lrx/Subscription;

    invoke-virtual {p0, v0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->unsubscribe(Lrx/Subscription;)V

    .line 359
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    if-nez v0, :cond_2

    const-string v1, "providersApi"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-interface {p2}, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;->getParameterValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lru/rocketbank/core/network/api/ProvidersApi;->operator(Ljava/lang/String;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$1;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/core/manager/DataManager;)V

    check-cast v1, Lrx/functions/Action1;

    .line 367
    new-instance p1, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;

    invoke-direct {p1, p0, p2}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onPaymentFieldChanged$2;-><init>(Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    check-cast p1, Lrx/functions/Action1;

    .line 359
    invoke-virtual {v0, v1, p1}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->operatorSubscription:Lrx/Subscription;

    return-void

    .line 374
    :cond_3
    invoke-direct {p0}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->checkProvider()V

    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    sget v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->PERMISSIONS_READ_CONTACT:I

    if-ne p1, v0, :cond_0

    .line 249
    invoke-direct {p0, p2, p3}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onPermission([Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 322
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 323
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-eqz v0, :cond_0

    const-string v0, "payment_provider"

    .line 324
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 326
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    if-eqz v0, :cond_1

    const-string v0, "key_pick_contact_field"

    .line 327
    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pickContactField:Lru/rocketbank/core/model/provider/ProviderField;

    check-cast v1, Landroid/os/Parcelable;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_1
    return-void
.end method

.method public final onSetTransitionNames(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "a"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "n"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 166
    iget-object v0, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->imageViewIcon:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTransitionName(Ljava/lang/String;)V

    .line 167
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->textViewProviderName:Lru/rocketbank/core/widgets/RocketTextView;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketTextView;->setTransitionName(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final onUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 5

    const-string v0, "userModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onUserModel(Lru/rocketbank/core/model/UserModel;)V

    .line 154
    iget-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->provider:Lru/rocketbank/core/model/provider/Provider;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lru/rocketbank/core/model/provider/Provider;->getFields()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    check-cast p1, Ljava/lang/Iterable;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/Collection;

    .line 424
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lru/rocketbank/core/model/provider/ProviderField;

    .line 153
    iget-object v3, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    const-string v4, "it"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 425
    :cond_1
    check-cast v0, Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 426
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/model/provider/ProviderField;

    const-string v1, "it"

    .line 154
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lru/rocketbank/core/model/provider/ProviderField;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const-string v2, "_paymentFields[it.name]!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->onPaymentFieldChanged(Lru/rocketbank/core/model/provider/ProviderField;Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/payment/PaymentProviderBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 144
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 145
    iget-object p2, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->_paymentFields:Ljava/util/LinkedHashMap;

    invoke-virtual {p2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;

    .line 146
    new-instance v0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onViewCreated$1;

    invoke-direct {v0, p2}, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/payment/IPaymentFieldWidget;)V

    check-cast v0, Ljava/lang/Runnable;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final setPendingField(Lru/rocketbank/core/model/provider/ProviderField;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->pendingField:Lru/rocketbank/core/model/provider/ProviderField;

    return-void
.end method

.method public final setProvidersApi(Lru/rocketbank/core/network/api/ProvidersApi;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->providersApi:Lru/rocketbank/core/network/api/ProvidersApi;

    return-void
.end method

.method public final setToolbar(Landroid/support/v7/widget/Toolbar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbar:Landroid/support/v7/widget/Toolbar;

    return-void
.end method

.method public final setToolbarShadow(Landroid/view/View;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lru/rocketbank/r2d2/payment/PaymentDetailsFragment;->toolbarShadow:Landroid/view/View;

    return-void
.end method
