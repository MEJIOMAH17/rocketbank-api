.class public abstract Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;
.super Lru/rocketbank/r2d2/fragments/RocketFragment;
.source "FriendAmountBaseFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nFriendAmountBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FriendAmountBaseFragment.kt\nru/rocketbank/r2d2/friends/FriendAmountBaseFragment\n+ 2 Strings.kt\nkotlin/text/StringsKt__StringsKt\n+ 3 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n*L\n1#1,281:1\n60#2:282\n31#2,23:283\n60#2:306\n31#2,23:307\n838#3,2:330\n303#3:332\n362#3,5:333\n*E\n*S KotlinDebug\n*F\n+ 1 FriendAmountBaseFragment.kt\nru/rocketbank/r2d2/friends/FriendAmountBaseFragment\n*L\n87#1:282\n87#1,23:283\n87#1:306\n87#1,23:307\n150#1,2:330\n203#1:332\n203#1,5:333\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$Companion;

.field private static final REQUEST_CODE:I = 0x3e7


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field protected accountsView:Lru/rocketbank/r2d2/widget/AccountWidget;

.field private amount:D

.field protected amountTextWatcher:Landroid/text/TextWatcher;

.field private contact:Lru/rocketbank/core/model/contact/Contact;

.field protected content:Landroid/widget/LinearLayout;

.field protected currencyCode:Ljava/lang/String;

.field private final currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

.field protected editTextAmount:Landroid/widget/EditText;

.field private edittextComment:Landroid/widget/EditText;

.field public floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

.field protected imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

.field private isNextButtonEnabled:Z

.field private mathEval:Lru/rocketbank/core/utils/MathEval;

.field protected textviewRecipient:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->Companion:Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;-><init>()V

    .line 47
    new-instance v0, Lru/rocketbank/core/utils/MathEval;

    invoke-direct {v0}, Lru/rocketbank/core/utils/MathEval;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->mathEval:Lru/rocketbank/core/utils/MathEval;

    .line 50
    sget-object v0, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v0

    invoke-interface {v0}, Lru/rocketbank/core/dagger/component/RocketComponent;->getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {v0}, Lru/rocketbank/core/manager/CurrencyManager;->getCurrencySymbolRub()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyCode:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$updateText(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Landroid/view/View;Landroid/text/TextWatcher;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->updateText(Landroid/view/View;Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static bridge synthetic onRequestDataFilled$default(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 6

    if-eqz p7, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: onRequestDataFilled"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p6, 0x8

    if-eqz p6, :cond_1

    const/4 p5, 0x0

    :cond_1
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    .line 226
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onRequestDataFilled(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final sendMoney(Ljava/lang/String;Lru/rocketbank/core/model/contact/Contact;)V
    .locals 8

    .line 212
    iget-wide v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    invoke-virtual {p0, v0, v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isZero(D)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u041f\u043e\u0436\u0430\u043b\u0443\u0439\u0441\u0442\u0430, \u0438\u0441\u043f\u0440\u0430\u0432\u044c\u0442\u0435 \u0441\u043b\u0435\u0434\u0443\u044e\u0449\u0438\u0435 \u043e\u0448\u0438\u0431\u043a\u0438:\n"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "\u0421\u0443\u043c\u043c\u0430 \u0434\u043e\u043b\u0436\u043d\u0430 \u0431\u044b\u0442\u044c \u0431\u043e\u043b\u044c\u0448\u0435 0.\n"

    .line 214
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "errorMessage.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->showAlert(Ljava/lang/String;)V

    return-void

    .line 219
    :cond_0
    iget-wide v2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->onRequestDataFilled$default(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method private final setContact(Lru/rocketbank/core/model/contact/Contact;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    return-void
.end method

.method private final setNextButtonEnabled(Z)V
    .locals 0

    .line 42
    iput-boolean p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    return-void
.end method

.method private final updateText(Landroid/view/View;Landroid/text/TextWatcher;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 142
    sget v3, Lru/rocketbank/r2d2/R$id;->evaluationResult:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lru/rocketbank/core/widgets/RocketTextView;

    .line 144
    iget-object v4, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v4, :cond_0

    const-string v5, "editTextAmount"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v4, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 145
    invoke-virtual/range {p0 .. p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getAmountString()Ljava/lang/String;

    move-result-object v4

    .line 146
    iget-object v5, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v5, :cond_1

    const-string v6, "editTextAmount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v5}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v5

    .line 150
    move-object v6, v4

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    move v8, v7

    .line 330
    :goto_0
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ge v8, v9, :cond_3

    invoke-interface {v6, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 150
    sget-object v11, Lru/rocketbank/core/utils/MathEval;->MATH_OPERATORS:Ljava/util/List;

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    move v8, v10

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    move v8, v7

    :goto_1
    if-eqz v8, :cond_9

    const-string v6, "evaluationResult"

    .line 151
    invoke-static {v3, v6}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    const v6, 0x7f110192

    .line 153
    :try_start_0
    iget-object v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->mathEval:Lru/rocketbank/core/utils/MathEval;

    invoke-virtual {v8, v4}, Lru/rocketbank/core/utils/MathEval;->evaluate(Ljava/lang/String;)D

    move-result-wide v8

    iput-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    .line 156
    iget-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    sget-object v13, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {}, Lkotlin/jvm/internal/DoubleCompanionObject;->getNEGATIVE_INFINITY()D

    move-result-wide v13

    cmpg-double v15, v8, v13

    if-nez v15, :cond_4

    const-string v8, "-\u221e"

    :goto_2
    const-wide/16 v11, 0x0

    goto :goto_3

    .line 157
    :cond_4
    iget-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    sget-object v13, Lkotlin/jvm/internal/DoubleCompanionObject;->INSTANCE:Lkotlin/jvm/internal/DoubleCompanionObject;

    invoke-static {}, Lkotlin/jvm/internal/DoubleCompanionObject;->getPOSITIVE_INFINITY()D

    move-result-wide v13

    cmpg-double v15, v8, v13

    if-nez v15, :cond_5

    const-string v8, "+\u221e"

    goto :goto_2

    .line 158
    :cond_5
    iget-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "\u00af\\_(\u30c4)_/\u00af"

    goto :goto_2

    .line 160
    :cond_6
    iget-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    .line 161
    iget-object v13, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v13, :cond_7

    const-string v14, "floorMoneyFormatter"

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_7
    iget-wide v14, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    iget-object v11, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyCode:Ljava/lang/String;

    invoke-virtual {v13, v14, v15, v11, v7}, Lru/rocketbank/core/utils/MoneyFormatter;->format(DLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    move-wide/from16 v16, v8

    move-object v8, v11

    move-wide/from16 v11, v16

    .line 164
    :goto_3
    iput-wide v11, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    .line 165
    new-array v9, v10, [Ljava/lang/Object;

    aput-object v8, v9, v7

    invoke-virtual {v0, v6, v9}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    invoke-virtual {v3, v8}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    const-wide/16 v8, 0x0

    .line 167
    iput-wide v8, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    .line 168
    new-array v8, v10, [Ljava/lang/Object;

    const-string v9, "0 \u20bd"

    aput-object v9, v8, v7

    invoke-virtual {v0, v6, v8}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6}, Lru/rocketbank/core/widgets/RocketTextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    :goto_4
    sget v3, Lru/rocketbank/r2d2/R$id;->scrollView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ScrollView;

    iget-object v3, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v3, :cond_8

    const-string v6, "editTextAmount"

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v3}, Landroid/widget/EditText;->getTop()I

    move-result v3

    invoke-virtual {v1, v7, v3}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    goto :goto_6

    :cond_9
    const-string v1, "evaluationResult"

    .line 172
    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setVisibility(I)V

    .line 174
    :try_start_1
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    const-wide/16 v11, 0x0

    .line 173
    :goto_5
    iput-wide v11, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    .line 179
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_a

    move v7, v10

    :cond_a
    if-nez v7, :cond_b

    iget-wide v6, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    const-wide/16 v8, 0x0

    cmpg-double v1, v6, v8

    if-nez v1, :cond_c

    :cond_b
    const-string v4, "0"

    move v5, v10

    .line 185
    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyCode:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    if-le v5, v1, :cond_d

    move v5, v1

    .line 194
    :cond_d
    :goto_6
    iget-object v1, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v1, :cond_e

    const-string v3, "editTextAmount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_e
    move-object v3, v4

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v1, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v1, :cond_f

    const-string v3, "editTextAmount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    if-le v5, v3, :cond_10

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    :cond_10
    invoke-virtual {v1, v5}, Landroid/widget/EditText;->setSelection(I)V

    .line 196
    iget-object v1, v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v1, :cond_11

    const-string v3, "editTextAmount"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method


# virtual methods
.method public _$_clearFindViewByIdCache()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_0
    return-void
.end method

.method public _$_findCachedViewById(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

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

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method

.method public abstract accountsVisible()Z
.end method

.method public final clearTransitionNames()V
    .locals 3

    .line 243
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 244
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    if-nez v0, :cond_0

    const-string v1, "imageviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/ContactAvatarView;->setTransitionName(Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    if-nez v0, :cond_1

    const-string v2, "textviewRecipient"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_2

    const-string v2, "content"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method protected final disableNextButton()V
    .locals 4

    const/4 v0, 0x0

    .line 273
    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    .line 274
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected final enableNextButton()V
    .locals 4

    const/4 v0, 0x1

    .line 268
    iput-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    .line 269
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lru/rocketbank/core/events/NextButtonEvent;

    move-object v2, p0

    check-cast v2, Landroid/support/v4/app/Fragment;

    iget-boolean v3, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    invoke-direct {v1, v2, v3}, Lru/rocketbank/core/events/NextButtonEvent;-><init>(Landroid/support/v4/app/Fragment;Z)V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method protected final getAccountsView()Lru/rocketbank/r2d2/widget/AccountWidget;
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->accountsView:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez v0, :cond_0

    const-string v1, "accountsView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getAmount()D
    .locals 2

    .line 37
    iget-wide v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    return-wide v0
.end method

.method protected final getAmountString()Ljava/lang/String;
    .locals 11

    .line 202
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[0-9]||"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lru/rocketbank/core/utils/MathEval;->MATH_OPERATORS:Ljava/util/List;

    const-string v2, "MathEval.MATH_OPERATORS"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v1

    check-cast v3, Ljava/lang/Iterable;

    const-string v1, ")|(\\"

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    const-string v1, "(\\"

    move-object v5, v1

    check-cast v5, Ljava/lang/CharSequence;

    const-string v1, ")"

    move-object v6, v1

    check-cast v6, Ljava/lang/CharSequence;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x38

    invoke-static/range {v3 .. v10}, Lkotlin/collections/CollectionsKt;->joinToString$default$1494b5c(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lkotlin/text/Regex;

    invoke-direct {v1, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v2, "editTextAmount"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    check-cast v0, Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast v2, Ljava/lang/Appendable;

    .line 333
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_2

    .line 334
    invoke-interface {v0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    .line 203
    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v1, v7}, Lkotlin/text/Regex;->matches(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2, v6}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 337
    :cond_2
    check-cast v2, Ljava/lang/StringBuilder;

    .line 332
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "filterTo(StringBuilder(), predicate).toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_3

    .line 203
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, " "

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 205
    invoke-static {v0, v1, v4, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 206
    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "0"

    new-instance v2, Lkotlin/text/Regex;

    invoke-direct {v2, v1}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v2, v0, v1}, Lkotlin/text/Regex;->replaceFirst(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method protected final getAmountTextWatcher()Landroid/text/TextWatcher;
    .locals 2

    .line 56
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amountTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_0

    const-string v1, "amountTextWatcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getContact()Lru/rocketbank/core/model/contact/Contact;
    .locals 1

    .line 34
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    return-object v0
.end method

.method protected final getContent()Landroid/widget/LinearLayout;
    .locals 2

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->content:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const-string v1, "content"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getCurrencyManager()Lru/rocketbank/core/manager/CurrencyManager;
    .locals 1

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    return-object v0
.end method

.method protected final getEditTextAmount()Landroid/widget/EditText;
    .locals 2

    .line 45
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez v0, :cond_0

    const-string v1, "editTextAmount"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final getFloorMoneyFormatter()Lru/rocketbank/core/utils/MoneyFormatter;
    .locals 2

    .line 48
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    if-nez v0, :cond_0

    const-string v1, "floorMoneyFormatter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method protected final getImageviewRecipient()Lru/rocketbank/core/widgets/ContactAvatarView;
    .locals 2

    .line 38
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    if-nez v0, :cond_0

    const-string v1, "imageviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public abstract getNextButtonText()I
.end method

.method protected final getTextviewRecipient()Landroid/widget/TextView;
    .locals 2

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const-string v1, "textviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public final isNextButtonEnabled()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isNextButtonEnabled:Z

    return v0
.end method

.method protected abstract isTransfer()Z
.end method

.method public final isZero(D)Z
    .locals 3

    const-wide v0, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 233
    invoke-super {p0, p1, p2, p3}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 234
    sget p3, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->REQUEST_CODE:I

    if-ne p1, p3, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 235
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->currencyManager:Lru/rocketbank/core/manager/CurrencyManager;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lru/rocketbank/r2d2/RocketApplication;->Companion:Lru/rocketbank/r2d2/RocketApplication$Companion;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/RocketApplication$Companion;->getInjector()Lru/rocketbank/core/dagger/component/RocketComponent;

    move-result-object v1

    invoke-interface {v1}, Lru/rocketbank/core/dagger/component/RocketComponent;->getAuthorization()Lru/rocketbank/core/user/Authorization;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "authorization"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1043
    new-instance v2, Lru/rocketbank/core/utils/MoneyFormatter;

    invoke-direct {v2, v0, v1, p1}, Lru/rocketbank/core/utils/MoneyFormatter;-><init>(Landroid/content/Context;Lru/rocketbank/core/user/Authorization;Lru/rocketbank/core/manager/CurrencyManager;)V

    const/4 p1, 0x1

    .line 1044
    invoke-virtual {v2, p1}, Lru/rocketbank/core/utils/MoneyFormatter;->setFloorAmount(Z)V

    .line 62
    iput-object v2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const v1, 0x7f0c00da

    .line 66
    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->accountsVisible()Z

    move-result p2

    if-eqz p2, :cond_2

    const p2, 0x7f090341

    .line 69
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widget.AccountWidget"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/widget/AccountWidget;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->accountsView:Lru/rocketbank/r2d2/widget/AccountWidget;

    .line 70
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->accountsView:Lru/rocketbank/r2d2/widget/AccountWidget;

    if-nez p2, :cond_1

    const-string v1, "accountsView"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    check-cast p2, Landroid/view/View;

    const-string v1, "$receiver"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const p2, 0x7f09015c

    .line 73
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    const p2, 0x7f09015d

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_4

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.EditText"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->edittextComment:Landroid/widget/EditText;

    .line 76
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_5

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_5
    const-string v1, "contact"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    if-nez p2, :cond_6

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.model.contact.Contact"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    check-cast p2, Lru/rocketbank/core/model/contact/Contact;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    const p2, 0x7f090105

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_7

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.LinearLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->content:Landroid/widget/LinearLayout;

    const p2, 0x7f090064

    .line 79
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_8

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.ContactAvatarView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    check-cast p2, Lru/rocketbank/core/widgets/ContactAvatarView;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    .line 80
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    if-nez p2, :cond_9

    const-string v1, "imageviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_9
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    invoke-virtual {p2, v1}, Lru/rocketbank/core/widgets/ContactAvatarView;->setContact(Lru/rocketbank/core/model/contact/Contact;)V

    const p2, 0x7f09026c

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_a

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    .line 83
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    if-nez p2, :cond_b

    const-string v1, "textviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_b
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_c
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f09012f

    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_d

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_d
    check-cast p2, Landroid/widget/TextView;

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_e
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->isRocket()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 86
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_f

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_f
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lru/rocketbank/r2d2/Utils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_10

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_10
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->getServerName()Ljava/lang/String;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Lru/rocketbank/r2d2/Utils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 87
    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_11

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_11
    invoke-virtual {v1}, Lru/rocketbank/core/model/contact/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_12

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    .line 282
    :cond_12
    check-cast v1, Ljava/lang/CharSequence;

    .line 284
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    move v5, v0

    move v4, v2

    move v2, v5

    :goto_0
    const/16 v6, 0x20

    if-gt v2, v4, :cond_17

    if-nez v5, :cond_13

    move v7, v2

    goto :goto_1

    :cond_13
    move v7, v4

    .line 289
    :goto_1
    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-gt v7, v6, :cond_14

    move v7, v3

    goto :goto_2

    :cond_14
    move v7, v0

    :goto_2
    if-nez v5, :cond_16

    if-nez v7, :cond_15

    move v5, v3

    goto :goto_0

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_16
    if-eqz v7, :cond_17

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_17
    add-int/2addr v4, v3

    .line 305
    invoke-interface {v1, v2, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 282
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 87
    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v2, :cond_18

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_18
    invoke-virtual {v2}, Lru/rocketbank/core/model/contact/Contact;->getServerName()Ljava/lang/String;

    move-result-object v2

    .line 306
    check-cast v2, Ljava/lang/CharSequence;

    .line 308
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v4

    sub-int/2addr v4, v3

    move v7, v0

    move v5, v4

    move v4, v7

    :goto_3
    if-gt v4, v5, :cond_1d

    if-nez v7, :cond_19

    move v8, v4

    goto :goto_4

    :cond_19
    move v8, v5

    .line 313
    :goto_4
    invoke-interface {v2, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    if-gt v8, v6, :cond_1a

    move v8, v3

    goto :goto_5

    :cond_1a
    move v8, v0

    :goto_5
    if-nez v7, :cond_1c

    if-nez v8, :cond_1b

    move v7, v3

    goto :goto_3

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1c
    if-eqz v8, :cond_1d

    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_1d
    add-int/2addr v5, v3

    .line 329
    invoke-interface {v2, v4, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    .line 306
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_1f

    .line 88
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v0, :cond_1e

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1e
    invoke-virtual {v0}, Lru/rocketbank/core/model/contact/Contact;->getServerName()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_1f
    const/16 v0, 0x8

    .line 91
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_6
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez p2, :cond_20

    const-string v0, "editTextAmount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_20
    invoke-virtual {p2}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 96
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->clearTransitionNames()V

    .line 97
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getLocalEventBus()Lde/greenrobot/event/EventBus;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    iget-object v2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    if-nez v2, :cond_21

    const-string v3, "imageviewRecipient"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_21
    check-cast v2, Landroid/view/View;

    iget-object v3, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    if-nez v3, :cond_22

    const-string v4, "textviewRecipient"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_22
    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v1, v2, v3}, Lru/rocketbank/r2d2/friends/SharedElementsReadyEvent;-><init>(Landroid/support/v4/app/Fragment;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 99
    new-instance p2, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;

    invoke-direct {p2, p0, p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$3;-><init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;Landroid/view/View;)V

    check-cast p2, Landroid/text/TextWatcher;

    iput-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amountTextWatcher:Landroid/text/TextWatcher;

    .line 105
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez p2, :cond_23

    const-string v0, "editTextAmount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_23
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amountTextWatcher:Landroid/text/TextWatcher;

    if-nez v0, :cond_24

    const-string v1, "amountTextWatcher"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_24
    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 107
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez p2, :cond_25

    const-string v0, "editTextAmount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_25
    new-instance v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$4;

    invoke-direct {v0, p1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$4;-><init>(Landroid/view/View;)V

    check-cast v0, Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const-string p2, "rootView"

    .line 109
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget p2, Lru/rocketbank/r2d2/R$id;->calculatorKeyboard:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lru/rocketbank/core/widgets/CalculatorKeyboard;

    invoke-virtual {p2}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->getOperatorObservable()Lrx/Observable;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onCreateView$5;-><init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    if-nez p3, :cond_27

    .line 122
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez p2, :cond_26

    const-string p3, "editTextAmount"

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_26
    const-string p3, "0"

    check-cast p3, Ljava/lang/CharSequence;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_27
    const-string p2, "\u041d\u0430\u043f\u0438\u0448\u0438\u0442\u0435 <font color=\'#2196f3\'>#\u0442\u0435\u0433</font> \u0438\u043b\u0438 \u043a\u043e\u043c\u043c\u0435\u043d\u0442\u0430\u0440\u0438\u0439"

    const p3, 0x7f0901f3

    .line 125
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_28

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketTextInputLayout"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_28
    check-cast p3, Lru/rocketbank/core/widgets/RocketTextInputLayout;

    .line 126
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p3, p2}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->setHint(Ljava/lang/CharSequence;)V

    return-object p1
.end method

.method public synthetic onDestroyView()V
    .locals 0

    invoke-super {p0}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onDestroyView()V

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->_$_clearFindViewByIdCache()V

    return-void
.end method

.method public final onNextButtonClick()V
    .locals 2

    .line 259
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->edittextComment:Landroid/widget/EditText;

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->edittextComment:Landroid/widget/EditText;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_1
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->contact:Lru/rocketbank/core/model/contact/Contact;

    if-nez v1, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_2
    invoke-direct {p0, v0, v1}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->sendMoney(Ljava/lang/String;Lru/rocketbank/core/model/contact/Contact;)V

    return-void
.end method

.method protected onRequestDataFilled(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "contact"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comment"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    new-instance v0, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;-><init>(Lru/rocketbank/core/model/contact/Contact;DLjava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lru/rocketbank/r2d2/Utils;->closeKeyboardIfExists(Landroid/app/Activity;)V

    .line 229
    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->isTransfer()Z

    move-result p2

    invoke-static {p1, v0, p2}, Lru/rocketbank/r2d2/friends/FriendsStatusActivity;->createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/transfers/friend/FriendTransfersRequestData;Z)Landroid/content/Intent;

    move-result-object p1

    sget p2, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->REQUEST_CODE:I

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public abstract onTextChanged()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/RocketFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    iget-object p2, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    if-nez p2, :cond_0

    const-string v0, "editTextAmount"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    new-instance v0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$1;-><init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V

    check-cast v0, Landroid/text/TextWatcher;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 138
    new-instance p2, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$2;

    invoke-direct {p2, p0}, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment$onViewCreated$2;-><init>(Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;)V

    check-cast p2, Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected final setAccountsView(Lru/rocketbank/r2d2/widget/AccountWidget;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->accountsView:Lru/rocketbank/r2d2/widget/AccountWidget;

    return-void
.end method

.method protected final setAmount(D)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amount:D

    return-void
.end method

.method protected final setAmountTextWatcher(Landroid/text/TextWatcher;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->amountTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method protected final setContent(Landroid/widget/LinearLayout;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->content:Landroid/widget/LinearLayout;

    return-void
.end method

.method protected final setEditTextAmount(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->editTextAmount:Landroid/widget/EditText;

    return-void
.end method

.method public final setFloorMoneyFormatter(Lru/rocketbank/core/utils/MoneyFormatter;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->floorMoneyFormatter:Lru/rocketbank/core/utils/MoneyFormatter;

    return-void
.end method

.method protected final setImageviewRecipient(Lru/rocketbank/core/widgets/ContactAvatarView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    return-void
.end method

.method protected final setTextviewRecipient(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    return-void
.end method

.method public final setTransitionNames(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 251
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 252
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->imageviewRecipient:Lru/rocketbank/core/widgets/ContactAvatarView;

    if-nez v0, :cond_0

    const-string v1, "imageviewRecipient"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/ContactAvatarView;->setTransitionName(Ljava/lang/String;)V

    .line 253
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->textviewRecipient:Landroid/widget/TextView;

    if-nez p1, :cond_1

    const-string v0, "textviewRecipient"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTransitionName(Ljava/lang/String;)V

    .line 254
    iget-object p1, p0, Lru/rocketbank/r2d2/friends/FriendAmountBaseFragment;->content:Landroid/widget/LinearLayout;

    if-nez p1, :cond_2

    const-string p2, "content"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setTransitionName(Ljava/lang/String;)V

    :cond_3
    return-void
.end method
