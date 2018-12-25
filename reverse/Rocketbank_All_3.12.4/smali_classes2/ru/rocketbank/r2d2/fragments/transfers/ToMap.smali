.class public interface abstract Lru/rocketbank/r2d2/fragments/transfers/ToMap;
.super Ljava/lang/Object;
.source "TransferBankFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/fragments/transfers/ToMap$DefaultImpls;,
        Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;->$$INSTANCE:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

    sput-object v0, Lru/rocketbank/r2d2/fragments/transfers/ToMap;->Companion:Lru/rocketbank/r2d2/fragments/transfers/ToMap$Companion;

    return-void
.end method


# virtual methods
.method public abstract getFields()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lru/rocketbank/r2d2/utils/ViewModelObservable$ViewField;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
