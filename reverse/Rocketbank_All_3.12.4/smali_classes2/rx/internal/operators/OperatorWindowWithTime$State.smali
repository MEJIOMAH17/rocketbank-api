.class final Lrx/internal/operators/OperatorWindowWithTime$State;
.super Ljava/lang/Object;
.source "OperatorWindowWithTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorWindowWithTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/OperatorWindowWithTime$State<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final consumer:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "TT;>;"
        }
    .end annotation
.end field

.field final count:I

.field final producer:Lrx/Observable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observable<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 84
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    sput-object v0, Lrx/internal/operators/OperatorWindowWithTime$State;->EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;

    return-void
.end method

.method public constructor <init>(Lrx/Observer;Lrx/Observable;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;",
            "Lrx/Observable<",
            "TT;>;I)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    .line 88
    iput-object p2, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->producer:Lrx/Observable;

    .line 89
    iput p3, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    return-void
.end method

.method public static empty()Lrx/internal/operators/OperatorWindowWithTime$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/OperatorWindowWithTime$State<",
            "TT;>;"
        }
    .end annotation

    .line 102
    sget-object v0, Lrx/internal/operators/OperatorWindowWithTime$State;->EMPTY:Lrx/internal/operators/OperatorWindowWithTime$State;

    return-object v0
.end method


# virtual methods
.method public final clear()Lrx/internal/operators/OperatorWindowWithTime$State;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$State<",
            "TT;>;"
        }
    .end annotation

    .line 98
    invoke-static {}, Lrx/internal/operators/OperatorWindowWithTime$State;->empty()Lrx/internal/operators/OperatorWindowWithTime$State;

    move-result-object v0

    return-object v0
.end method

.method public final create(Lrx/Observer;Lrx/Observable;)Lrx/internal/operators/OperatorWindowWithTime$State;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observer<",
            "TT;>;",
            "Lrx/Observable<",
            "TT;>;)",
            "Lrx/internal/operators/OperatorWindowWithTime$State<",
            "TT;>;"
        }
    .end annotation

    .line 95
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method

.method public final next()Lrx/internal/operators/OperatorWindowWithTime$State;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/internal/operators/OperatorWindowWithTime$State<",
            "TT;>;"
        }
    .end annotation

    .line 92
    new-instance v0, Lrx/internal/operators/OperatorWindowWithTime$State;

    iget-object v1, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->consumer:Lrx/Observer;

    iget-object v2, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->producer:Lrx/Observable;

    iget v3, p0, Lrx/internal/operators/OperatorWindowWithTime$State;->count:I

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lrx/internal/operators/OperatorWindowWithTime$State;-><init>(Lrx/Observer;Lrx/Observable;I)V

    return-object v0
.end method
