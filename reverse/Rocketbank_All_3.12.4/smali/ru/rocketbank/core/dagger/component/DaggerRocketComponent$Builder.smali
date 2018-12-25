.class public final Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;
.super Ljava/lang/Object;
.source "DaggerRocketComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/dagger/component/DaggerRocketComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private androidModule:Lru/rocketbank/core/dagger/AndroidModule;

.field private atmsModule$37486e3e:Lcom/mattprecious/swirl/R$drawable;

.field private cardModule$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

.field private certificateModule$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;

.field private currencyModule:Lru/rocketbank/core/dagger/CurrencyModule;

.field private deliveryModule$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;

.field private discountsModule:Lru/rocketbank/core/dagger/DiscountsModule;

.field private facebookModule$ec23d75:Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

.field private feedModule$5773aa63:Lcom/mikepenz/materialize/R$color;

.field private geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

.field private messageModule$11baabfc:Lcom/mikepenz/materialize/color/Material;

.field private restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

.field private retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

.field private templateModule$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

.field private touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

.field private userModule:Lru/rocketbank/core/dagger/UserModule;

.field private utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 917
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 882
    invoke-direct {p0}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/AndroidModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    return-object p0
.end method

.method static synthetic access$1000$1cff59bd(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/R$color;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->feedModule$5773aa63:Lcom/mikepenz/materialize/R$color;

    return-object p0
.end method

.method static synthetic access$1100$2559936f(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$attr;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->cardModule$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

    return-object p0
.end method

.method static synthetic access$1200$36f13a2d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$layout;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->deliveryModule$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;

    return-object p0
.end method

.method static synthetic access$1300$635728fa(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/R$dimen;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->certificateModule$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;

    return-object p0
.end method

.method static synthetic access$1400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/DiscountsModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->discountsModule:Lru/rocketbank/core/dagger/DiscountsModule;

    return-object p0
.end method

.method static synthetic access$1500$776fd196(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/color/Material;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->messageModule$11baabfc:Lcom/mikepenz/materialize/color/Material;

    return-object p0
.end method

.method static synthetic access$1600$61e306e7(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lkotlin/ExceptionsKt__ExceptionsKt;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->templateModule$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

    return-object p0
.end method

.method static synthetic access$1700$5f52fe5d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/R$raw;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

    return-object p0
.end method

.method static synthetic access$200(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/GeoLocationModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

    return-object p0
.end method

.method static synthetic access$300$6c20b6d4(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    return-object p0
.end method

.method static synthetic access$400(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/UserModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->userModule:Lru/rocketbank/core/dagger/UserModule;

    return-object p0
.end method

.method static synthetic access$500(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/RetrofitModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

    return-object p0
.end method

.method static synthetic access$600$7789e74d(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialize/util/KeyboardUtil;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

    return-object p0
.end method

.method static synthetic access$700(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lru/rocketbank/core/dagger/CurrencyModule;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->currencyModule:Lru/rocketbank/core/dagger/CurrencyModule;

    return-object p0
.end method

.method static synthetic access$800$5fb1cb1b(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->facebookModule$ec23d75:Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

    return-object p0
.end method

.method static synthetic access$900$32be268(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;)Lcom/mattprecious/swirl/R$drawable;
    .locals 0

    .line 882
    iget-object p0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->atmsModule$37486e3e:Lcom/mattprecious/swirl/R$drawable;

    return-object p0
.end method


# virtual methods
.method public final androidModule(Lru/rocketbank/core/dagger/AndroidModule;)Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;
    .locals 0

    .line 995
    check-cast p1, Lru/rocketbank/core/dagger/AndroidModule;

    iput-object p1, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    return-object p0
.end method

.method public final build()Lru/rocketbank/core/dagger/component/RocketComponent;
    .locals 3

    .line 920
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->androidModule:Lru/rocketbank/core/dagger/AndroidModule;

    if-nez v0, :cond_0

    .line 921
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Lru/rocketbank/core/dagger/AndroidModule;

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " must be set"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 923
    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

    if-nez v0, :cond_1

    .line 924
    new-instance v0, Lru/rocketbank/core/dagger/GeoLocationModule;

    invoke-direct {v0}, Lru/rocketbank/core/dagger/GeoLocationModule;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->geoLocationModule:Lru/rocketbank/core/dagger/GeoLocationModule;

    .line 926
    :cond_1
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    if-nez v0, :cond_2

    .line 927
    new-instance v0, Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    invoke-direct {v0}, Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->utilsModule$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 929
    :cond_2
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->userModule:Lru/rocketbank/core/dagger/UserModule;

    if-nez v0, :cond_3

    .line 930
    new-instance v0, Lru/rocketbank/core/dagger/UserModule;

    invoke-direct {v0}, Lru/rocketbank/core/dagger/UserModule;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->userModule:Lru/rocketbank/core/dagger/UserModule;

    .line 932
    :cond_3
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

    if-nez v0, :cond_4

    .line 933
    new-instance v0, Lru/rocketbank/core/dagger/RetrofitModule;

    invoke-direct {v0}, Lru/rocketbank/core/dagger/RetrofitModule;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->retrofitModule:Lru/rocketbank/core/dagger/RetrofitModule;

    .line 935
    :cond_4
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

    if-nez v0, :cond_5

    .line 936
    new-instance v0, Lcom/mikepenz/materialize/util/KeyboardUtil;

    invoke-direct {v0}, Lcom/mikepenz/materialize/util/KeyboardUtil;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->restModule$3d1596a7:Lcom/mikepenz/materialize/util/KeyboardUtil;

    .line 938
    :cond_5
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->currencyModule:Lru/rocketbank/core/dagger/CurrencyModule;

    if-nez v0, :cond_6

    .line 939
    new-instance v0, Lru/rocketbank/core/dagger/CurrencyModule;

    invoke-direct {v0}, Lru/rocketbank/core/dagger/CurrencyModule;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->currencyModule:Lru/rocketbank/core/dagger/CurrencyModule;

    .line 941
    :cond_6
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->facebookModule$ec23d75:Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

    if-nez v0, :cond_7

    .line 942
    new-instance v0, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->facebookModule$ec23d75:Lcom/mikepenz/materialdrawer/util/DrawerUIUtils;

    .line 944
    :cond_7
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->atmsModule$37486e3e:Lcom/mattprecious/swirl/R$drawable;

    if-nez v0, :cond_8

    .line 945
    new-instance v0, Lcom/mattprecious/swirl/R$drawable;

    invoke-direct {v0}, Lcom/mattprecious/swirl/R$drawable;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->atmsModule$37486e3e:Lcom/mattprecious/swirl/R$drawable;

    .line 947
    :cond_8
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->feedModule$5773aa63:Lcom/mikepenz/materialize/R$color;

    if-nez v0, :cond_9

    .line 948
    new-instance v0, Lcom/mikepenz/materialize/R$color;

    invoke-direct {v0}, Lcom/mikepenz/materialize/R$color;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->feedModule$5773aa63:Lcom/mikepenz/materialize/R$color;

    .line 950
    :cond_9
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->cardModule$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

    if-nez v0, :cond_a

    .line 951
    new-instance v0, Lcom/mikepenz/materialdrawer/R$attr;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/R$attr;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->cardModule$5fcde415:Lcom/mikepenz/materialdrawer/R$attr;

    .line 953
    :cond_a
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->deliveryModule$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;

    if-nez v0, :cond_b

    .line 954
    new-instance v0, Lcom/mikepenz/materialdrawer/R$layout;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/R$layout;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->deliveryModule$19fe5379:Lcom/mikepenz/materialdrawer/R$layout;

    .line 956
    :cond_b
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->certificateModule$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;

    if-nez v0, :cond_c

    .line 957
    new-instance v0, Lcom/mikepenz/materialdrawer/R$dimen;

    invoke-direct {v0}, Lcom/mikepenz/materialdrawer/R$dimen;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->certificateModule$7940e6c:Lcom/mikepenz/materialdrawer/R$dimen;

    .line 959
    :cond_c
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->discountsModule:Lru/rocketbank/core/dagger/DiscountsModule;

    if-nez v0, :cond_d

    .line 960
    new-instance v0, Lru/rocketbank/core/dagger/DiscountsModule;

    invoke-direct {v0}, Lru/rocketbank/core/dagger/DiscountsModule;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->discountsModule:Lru/rocketbank/core/dagger/DiscountsModule;

    .line 962
    :cond_d
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->messageModule$11baabfc:Lcom/mikepenz/materialize/color/Material;

    if-nez v0, :cond_e

    .line 963
    new-instance v0, Lcom/mikepenz/materialize/color/Material;

    invoke-direct {v0}, Lcom/mikepenz/materialize/color/Material;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->messageModule$11baabfc:Lcom/mikepenz/materialize/color/Material;

    .line 965
    :cond_e
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->templateModule$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

    if-nez v0, :cond_f

    .line 966
    new-instance v0, Lkotlin/ExceptionsKt__ExceptionsKt;

    invoke-direct {v0}, Lkotlin/ExceptionsKt__ExceptionsKt;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->templateModule$10f37941:Lkotlin/ExceptionsKt__ExceptionsKt;

    .line 968
    :cond_f
    iget-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

    if-nez v0, :cond_10

    .line 969
    new-instance v0, Lru/rocketbank/core/R$raw;

    invoke-direct {v0}, Lru/rocketbank/core/R$raw;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;->touchIDModule$3af7dc09:Lru/rocketbank/core/R$raw;

    .line 971
    :cond_10
    new-instance v0, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lru/rocketbank/core/dagger/component/DaggerRocketComponent;-><init>(Lru/rocketbank/core/dagger/component/DaggerRocketComponent$Builder;B)V

    return-object v0
.end method
