.class public final Lru/rocketbank/r2d2/widgets/NotificationDialog;
.super Landroid/support/v4/app/DialogFragment;
.source "NotificationDialog.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;,
        Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNotificationDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NotificationDialog.kt\nru/rocketbank/r2d2/widgets/NotificationDialog\n*L\n1#1,208:1\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;

.field private static final TOKEN:Ljava/lang/String; = "TOKEN"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private account:Lru/rocketbank/core/model/AccountModel;

.field private activatedText:Ljava/lang/String;

.field public authorization:Lru/rocketbank/core/user/Authorization;

.field private authorizationSubscription:Lrx/Subscription;

.field private binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

.field private checkedIsActive:Z

.field private final data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

.field private isActive:Z

.field private listener:Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;

.field private final negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private final positiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private pushRadioButton:Landroid/widget/RadioButton;

.field private smsRadioButton:Landroid/widget/RadioButton;

.field private smsWithCostText:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private tvInfo:Landroid/widget/TextView;

.field private userModel:Lru/rocketbank/core/model/UserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->Companion:Lru/rocketbank/r2d2/widgets/NotificationDialog$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 53
    new-instance v0, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-direct {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    .line 166
    sget-object v0, Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;->INSTANCE:Lru/rocketbank/r2d2/widgets/NotificationDialog$negativeOnClickListener$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 170
    new-instance v0, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog$positiveOnClickListener$1;-><init>(Lru/rocketbank/r2d2/widgets/NotificationDialog;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->positiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public static final synthetic access$getAccount$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Lru/rocketbank/core/model/AccountModel;
    .locals 0

    .line 27
    iget-object p0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->account:Lru/rocketbank/core/model/AccountModel;

    return-object p0
.end method

.method public static final synthetic access$getCheckedIsActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->checkedIsActive:Z

    return p0
.end method

.method public static final synthetic access$isActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;)Z
    .locals 0

    .line 27
    iget-boolean p0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->isActive:Z

    return p0
.end method

.method public static final synthetic access$sendRequest(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->sendRequest(Z)V

    return-void
.end method

.method public static final synthetic access$setAccount$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;Lru/rocketbank/core/model/AccountModel;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->account:Lru/rocketbank/core/model/AccountModel;

    return-void
.end method

.method public static final synthetic access$setActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->isActive:Z

    return-void
.end method

.method public static final synthetic access$setCheckedIsActive$p(Lru/rocketbank/r2d2/widgets/NotificationDialog;Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->checkedIsActive:Z

    return-void
.end method

.method public static final synthetic access$setUserModel(Lru/rocketbank/r2d2/widgets/NotificationDialog;Lru/rocketbank/core/model/UserModel;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setUserModel(Lru/rocketbank/core/model/UserModel;)V

    return-void
.end method

.method private final sendRequest(Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->listener:Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;->onChange(Z)V

    return-void

    :cond_0
    return-void
.end method

.method private final setUserModel(Lru/rocketbank/core/model/UserModel;)V
    .locals 2

    .line 177
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->userModel:Lru/rocketbank/core/model/UserModel;

    .line 178
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->token:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v1, "token"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1, v0}, Lru/rocketbank/core/model/UserModel;->getAccount(Ljava/lang/String;)Lru/rocketbank/core/model/AccountModel;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->account:Lru/rocketbank/core/model/AccountModel;

    .line 179
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setupNotifications()V

    return-void
.end method

.method private final setupStrings()V
    .locals 14

    .line 128
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->account:Lru/rocketbank/core/model/AccountModel;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/model/TariffModel;->getOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lru/rocketbank/core/model/OptionModel;->getCost()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 129
    :goto_0
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->account:Lru/rocketbank/core/model/AccountModel;

    if-nez v2, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_3
    invoke-virtual {v2}, Lru/rocketbank/core/model/AccountModel;->getCurrentTariff()Lru/rocketbank/core/model/TariffModel;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4
    invoke-virtual {v2}, Lru/rocketbank/core/model/TariffModel;->getOption()Lru/rocketbank/core/model/OptionModel;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lru/rocketbank/core/model/OptionModel;->getPaidTo()Ljava/util/Date;

    move-result-object v1

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 132
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v4, 0x7f1101c2

    .line 133
    invoke-virtual {p0, v4}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.fragment_option_sms_active)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7, v1}, Lru/rocketbank/r2d2/utils/DateUtils;->formatDateTillDayMonthYear(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    aput-object v0, v6, v3

    .line 132
    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 136
    :cond_6
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v1, 0x7f1101c3

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.fragment_option_sms_inactive)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v0, v4, v2

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :goto_1
    iput-object v1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->activatedText:Ljava/lang/String;

    .line 138
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const v1, 0x7f1104c0

    .line 139
    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v4, "getString(R.string.turn_on_sms_with_cost)"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v4, v3, [Ljava/lang/Object;

    .line 140
    invoke-static {}, Lru/rocketbank/r2d2/manager/MoneyManager;->getInstance()Lru/rocketbank/r2d2/manager/MoneyManager;

    move-result-object v5

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v6, v0

    goto :goto_2

    :cond_7
    const-wide/16 v6, 0x0

    :goto_2
    sget-object v0, Lru/rocketbank/core/model/enums/Currency;->ROUBLE:Lru/rocketbank/core/model/enums/Currency;

    invoke-virtual {v5, v6, v7, v0, v2}, Lru/rocketbank/r2d2/manager/MoneyManager;->format(DLru/rocketbank/core/model/enums/Currency;Z)Ljava/lang/String;

    move-result-object v8

    const-string v0, "MoneyManager.getInstance\u2026, Currency.ROUBLE, false)"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "\u0452"

    const-string v10, "\u20bd"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    .line 141
    invoke-static/range {v8 .. v13}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    .line 138
    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->smsWithCostText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getAuthorization()Lru/rocketbank/core/user/Authorization;
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_0

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 61
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 62
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorization:Lru/rocketbank/core/user/Authorization;

    .line 64
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const-string v0, "TOKEN"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "arguments!!.getString(TOKEN)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->token:Ljava/lang/String;

    .line 66
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 67
    invoke-static {p1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->inflate(Landroid/view/LayoutInflater;)Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    move-result-object p1

    const-string v0, "DialogNotificationViewBinding.inflate(inflater)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    .line 68
    new-instance p1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_3

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    .line 70
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->positiveOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    .line 71
    iget-object v2, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->negativeOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable$184cab27()Landroid/support/v7/app/AlertDialog$Builder;

    .line 75
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_4

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->pushRadioButton:Landroid/widget/RadioButton;

    const-string v1, "binding.pushRadioButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->pushRadioButton:Landroid/widget/RadioButton;

    .line 76
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_5

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->smsRadioButton:Landroid/widget/RadioButton;

    const-string v1, "binding.smsRadioButton"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->smsRadioButton:Landroid/widget/RadioButton;

    .line 77
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_6

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->tvInfo:Lru/rocketbank/core/widgets/RocketTextView;

    const-string v1, "binding.tvInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->tvInfo:Landroid/widget/TextView;

    .line 78
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_7

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setData(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;)V

    .line 79
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object p1

    const-string v0, "builder.create()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/app/Dialog;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 1

    .line 183
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorizationSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 184
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->listener:Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;->onDestroy()V

    .line 186
    :cond_1
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onDestroyView()V

    .line 187
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 161
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onPause()V

    .line 162
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorizationSubscription:Lrx/Subscription;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    .line 163
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_1

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setListener(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;)V

    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 92
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onResume()V

    .line 93
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->binding:Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/DialogNotificationViewBinding;->setListener(Lru/rocketbank/r2d2/data/binding/dialogs/NotificationSelectListener;)V

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorization:Lru/rocketbank/core/user/Authorization;

    if-nez v0, :cond_1

    const-string v1, "authorization"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/user/Authorization;->getUser()Lrx/Observable;

    move-result-object v0

    new-instance v1, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;

    invoke-direct {v1, p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog$onResume$1;-><init>(Lru/rocketbank/r2d2/widgets/NotificationDialog;)V

    check-cast v1, Lrx/Subscriber;

    invoke-virtual {v0, v1}, Lrx/Observable;->subscribe(Lrx/Subscriber;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorizationSubscription:Lrx/Subscription;

    return-void
.end method

.method public final onStart()V
    .locals 4

    .line 83
    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    .line 84
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.support.v7.app.AlertDialog"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Landroid/support/v7/app/AlertDialog;

    const/4 v1, -0x1

    .line 85
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    .line 86
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    const v3, 0x7f060208

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v1, -0x2

    .line 87
    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    const v2, 0x7f060095

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    return-void
.end method

.method public final radioButtonPressed(Landroid/view/View;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0902c4

    if-eq p1, v0, :cond_4

    const v0, 0x7f090328

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->checkedIsActive:Z

    .line 152
    iget-boolean p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->isActive:Z

    if-eqz p1, :cond_2

    .line 153
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getTextInfo()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->activatedText:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v1, "activatedText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void

    .line 154
    :cond_2
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getTextInfo()Landroid/databinding/ObservableField;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->smsWithCostText:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v1, "smsWithCostText"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    :goto_0
    return-void

    .line 147
    :cond_4
    iget-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getTextInfo()Landroid/databinding/ObservableField;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->checkedIsActive:Z

    return-void
.end method

.method public final setAuthorization(Lru/rocketbank/core/user/Authorization;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->authorization:Lru/rocketbank/core/user/Authorization;

    return-void
.end method

.method public final setNotificationDialogListener(Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;)V
    .locals 1

    const-string v0, "notificationDialogListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->listener:Lru/rocketbank/r2d2/widgets/NotificationDialog$NotificationDialogListener;

    return-void
.end method

.method public final setupNotifications()V
    .locals 3

    .line 119
    invoke-direct {p0}, Lru/rocketbank/r2d2/widgets/NotificationDialog;->setupStrings()V

    .line 120
    iget-boolean v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->isActive:Z

    if-eqz v0, :cond_1

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getTextInfo()Landroid/databinding/ObservableField;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->activatedText:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "activatedText"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    const v0, 0x7f090328

    goto :goto_0

    :cond_1
    const v0, 0x7f0902c4

    .line 124
    :goto_0
    iget-object v1, p0, Lru/rocketbank/r2d2/widgets/NotificationDialog;->data:Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/data/binding/dialogs/NotificationDialogData;->getCheckedItem()Landroid/databinding/ObservableInt;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/databinding/ObservableInt;->set(I)V

    return-void
.end method
