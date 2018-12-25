.class public final Lkotlin/KotlinVersion;
.super Ljava/lang/Object;
.source "KotlinVersion.kt"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/KotlinVersion$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lkotlin/KotlinVersion;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nKotlinVersion.kt\nKotlin\n*S Kotlin\n*F\n+ 1 KotlinVersion.kt\nkotlin/KotlinVersion\n*L\n1#1,75:1\n*E\n"
.end annotation


# static fields
.field public static final CURRENT:Lkotlin/KotlinVersion;

.field public static final Companion:Lkotlin/KotlinVersion$Companion;


# instance fields
.field private final major:I

.field private final minor:I

.field private final patch:I

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/KotlinVersion$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/KotlinVersion$Companion;-><init>(B)V

    sput-object v0, Lkotlin/KotlinVersion;->Companion:Lkotlin/KotlinVersion$Companion;

    .line 72
    new-instance v0, Lkotlin/KotlinVersion;

    invoke-direct {v0}, Lkotlin/KotlinVersion;-><init>()V

    sput-object v0, Lkotlin/KotlinVersion;->CURRENT:Lkotlin/KotlinVersion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lkotlin/KotlinVersion;->major:I

    const/4 v0, 0x2

    iput v0, p0, Lkotlin/KotlinVersion;->minor:I

    const/16 v0, 0x29

    iput v0, p0, Lkotlin/KotlinVersion;->patch:I

    const v0, 0x10229

    .line 18
    iput v0, p0, Lkotlin/KotlinVersion;->version:I

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 12
    check-cast p1, Lkotlin/KotlinVersion;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    .line 33
    move-object v0, p0

    check-cast v0, Lkotlin/KotlinVersion;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    .line 34
    :cond_0
    instance-of v0, p1, Lkotlin/KotlinVersion;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lkotlin/KotlinVersion;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public final hashCode()I
    .locals 1

    const v0, 0x10229

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "1.2."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
