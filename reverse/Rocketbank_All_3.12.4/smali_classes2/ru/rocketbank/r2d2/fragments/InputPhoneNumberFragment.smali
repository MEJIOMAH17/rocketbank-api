.class public final Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "InputPhoneNumberFragment.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;

.field private static final KEY_CHANGE_MOBILE_PHONE:Ljava/lang/String; = "KEY_CHANGE_MOBILE_PHONE"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field public binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

.field public editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

.field public editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

.field private eventBus:Lde/greenrobot/event/EventBus;

.field public textViewHint:Landroid/widget/TextView;

.field public toolBarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->Companion:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 40
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public static final synthetic access$getKEY_CHANGE_MOBILE_PHONE$cp()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->KEY_CHANGE_MOBILE_PHONE:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$next(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->next()V

    return-void
.end method

.method public static final synthetic access$validate(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)Z
    .locals 0

    .line 25
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->validate()Z

    move-result p0

    return p0
.end method

.method private final next()V
    .locals 5

    .line 100
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_0

    const-string v1, "editTextPhone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lru/rocketbank/r2d2/helpers/KeyboardHelper;->hide(Landroid/widget/EditText;)V

    .line 101
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->eventBus:Lde/greenrobot/event/EventBus;

    new-instance v1, Lru/rocketbank/core/events/PhoneNumberEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v3, :cond_1

    const-string v4, "editTextCountryCode"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v3, :cond_2

    const-string v4, "editTextPhone"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lru/rocketbank/core/events/PhoneNumberEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method private final validate()Z
    .locals 5

    .line 86
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "editTextCountryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "+"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v0, v1, v4, v3, v2}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_1

    const-string v1, "editTextCountryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditText;->length()I

    move-result v0

    if-ge v0, v3, :cond_2

    goto :goto_0

    .line 91
    :cond_2
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_3

    const-string v1, "editTextPhone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->getPhone()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_5

    .line 92
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_4

    const-string v1, "editTextPhone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    const v1, 0x7f11018b

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->setError(Ljava/lang/CharSequence;)V

    return v4

    :cond_5
    const/4 v0, 0x1

    return v0

    .line 87
    :cond_6
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_7

    const-string v1, "editTextCountryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    const v1, 0x7f110189

    invoke-virtual {p0, v1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketEditText;->setError(Ljava/lang/CharSequence;)V

    return v4
.end method


# virtual methods
.method public final _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public final _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez v0, :cond_0

    const-string v1, "binding"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getEditTextCountryCode()Lru/rocketbank/core/widgets/RocketEditText;
    .locals 2

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    if-nez v0, :cond_0

    const-string v1, "editTextCountryCode"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getEditTextPhone()Lru/rocketbank/core/widgets/RocketEditTextPhone;
    .locals 2

    .line 43
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez v0, :cond_0

    const-string v1, "editTextPhone"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getEventBus()Lde/greenrobot/event/EventBus;
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->eventBus:Lde/greenrobot/event/EventBus;

    return-object v0
.end method

.method public final getTextViewHint()Landroid/widget/TextView;
    .locals 2

    .line 42
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->textViewHint:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "textViewHint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getToolBarWithButtonData()Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;
    .locals 2

    .line 46
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->toolBarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez v0, :cond_0

    const-string v1, "toolBarWithButtonData"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final nextPressed(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->next()V

    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 50
    invoke-static {p1, p2, p3}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    move-result-object p1

    const-string p2, "FragmentInputPhoneNumber\u2026flater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    .line 52
    new-instance p1, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    const p2, 0x7f110471

    .line 53
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const p2, 0x7f110314

    .line 54
    invoke-virtual {p0, p2}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/16 v5, 0x8

    const/4 v6, 0x0

    move-object v0, p1

    .line 52
    invoke-direct/range {v0 .. v6}, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;-><init>(Ljava/lang/String;Ljava/lang/String;ZIILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->toolBarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_0

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->textViewHintBottom:Lru/rocketbank/core/widgets/RocketTextView;

    const-string p2, "binding.textViewHintBottom"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->textViewHint:Landroid/widget/TextView;

    .line 58
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_1

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->phone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    const-string p2, "binding.phone"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    .line 59
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_2

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->countryCode:Lru/rocketbank/core/widgets/RocketEditText;

    const-string p2, "binding.countryCode"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    .line 61
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_3

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_3
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setHandler(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonHandler;)V

    .line 62
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_4

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_4
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->toolBarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    if-nez p2, :cond_5

    const-string p3, "toolBarWithButtonData"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->setToolbarBinding(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez p1, :cond_6

    const-string p2, "editTextPhone"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p1}, Lru/rocketbank/core/widgets/RocketEditTextPhone;->requestFocus()Z

    .line 66
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    if-nez p1, :cond_7

    const-string p2, "editTextPhone"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    check-cast p1, Landroid/widget/TextView;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/widget/RxTextView;->editorActions(Landroid/widget/TextView;)Lrx/Observable;

    move-result-object p1

    .line 67
    sget-object p2, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$1;->INSTANCE:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$1;

    check-cast p2, Lrx/functions/Func1;

    invoke-virtual {p1, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 69
    new-instance p2, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;-><init>(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)V

    check-cast p2, Lrx/functions/Func1;

    invoke-virtual {p1, p2}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    .line 71
    new-instance p2, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$3;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$3;-><init>(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)V

    check-cast p2, Lrx/functions/Action1;

    invoke-virtual {p1, p2}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    .line 74
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_f

    sget-object p2, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->KEY_CHANGE_MOBILE_PHONE:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lru/rocketbank/core/model/ChangeMobilePhone;

    if-nez p1, :cond_8

    goto :goto_0

    .line 75
    :cond_8
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->textViewHint:Landroid/widget/TextView;

    if-nez p2, :cond_9

    const-string p3, "textViewHint"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p1}, Lru/rocketbank/core/model/ChangeMobilePhone;->getPhoneText()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.AbstractActivity"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p1, Lru/rocketbank/r2d2/activities/AbstractActivity;

    .line 79
    iget-object p2, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p2, :cond_b

    const-string p3, "binding"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->toolbarInclude:Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;

    if-nez p2, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/LayoutToolbarWithButtonBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/AbstractActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 80
    invoke-virtual {p1}, Lru/rocketbank/r2d2/activities/AbstractActivity;->getSupportActionBar()Landroid/support/v7/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/support/v7/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 82
    :cond_d
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    if-nez p1, :cond_e

    const-string p2, "binding"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;->getRoot()Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 74
    :cond_f
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final setBinding(Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->binding:Lru/rocketbank/r2d2/databinding/FragmentInputPhoneNumberBinding;

    return-void
.end method

.method public final setEditTextCountryCode(Lru/rocketbank/core/widgets/RocketEditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextCountryCode:Lru/rocketbank/core/widgets/RocketEditText;

    return-void
.end method

.method public final setEditTextPhone(Lru/rocketbank/core/widgets/RocketEditTextPhone;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->editTextPhone:Lru/rocketbank/core/widgets/RocketEditTextPhone;

    return-void
.end method

.method public final setEventBus(Lde/greenrobot/event/EventBus;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->eventBus:Lde/greenrobot/event/EventBus;

    return-void
.end method

.method public final setTextViewHint(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->textViewHint:Landroid/widget/TextView;

    return-void
.end method

.method public final setToolBarWithButtonData(Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->toolBarWithButtonData:Lru/rocketbank/r2d2/data/binding/toolbar/ToolbarWithButtonData;

    return-void
.end method
