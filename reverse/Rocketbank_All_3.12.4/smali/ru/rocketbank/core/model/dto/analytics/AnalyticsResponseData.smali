.class public Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;
.super Ljava/lang/Object;
.source "AnalyticsResponseData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;",
            ">;"
        }
    .end annotation
.end field

.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final TRANSLATOR:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private categories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
            ">;"
        }
    .end annotation
.end field

.field private firstOperationDate:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "first_operation_date"
    .end annotation
.end field

.field private groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
            ">;"
        }
    .end annotation
.end field

.field private merchants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;",
            ">;"
        }
    .end annotation
.end field

.field private total:D


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->TRANSLATOR:Ljava/util/Map;

    const-string v1, "other"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->TRANSLATOR:Ljava/util/Map;

    const-string v1, "transfer"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->TRANSLATOR:Ljava/util/Map;

    const-string v1, "atm"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$3;

    invoke-direct {v0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$3;-><init>()V

    sput-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->total:D

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->firstOperationDate:Ljava/lang/String;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    .line 115
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    const-class v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    .line 117
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    const-class v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->merchants:Ljava/util/List;

    .line 119
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->merchants:Ljava/util/List;

    const-class v1, Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .line 19
    sget-object v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->TRANSLATOR:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    return-object v0
.end method

.method public getFirstOperationDate()Ljava/util/Calendar;
    .locals 4

    .line 43
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->firstOperationDate:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 47
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 48
    sget-object v2, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->firstOperationDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    return-object v0
.end method

.method public getMerchants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsMerchant;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->merchants:Ljava/util/List;

    return-object v0
.end method

.method public getTotal()D
    .locals 2

    .line 39
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->total:D

    return-wide v0
.end method

.method public setCategories(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsCategory;",
            ">;)V"
        }
    .end annotation

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    .line 82
    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$2;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$2;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public setGroups(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lru/rocketbank/core/model/dto/analytics/AnalyticsGroup;",
            ">;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    .line 63
    iget-object p1, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    new-instance v0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$1;

    invoke-direct {v0, p0}, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData$1;-><init>(Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 101
    iget-wide v0, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->total:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 102
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->firstOperationDate:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->groups:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 104
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->categories:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 105
    iget-object p2, p0, Lru/rocketbank/core/model/dto/analytics/AnalyticsResponseData;->merchants:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
