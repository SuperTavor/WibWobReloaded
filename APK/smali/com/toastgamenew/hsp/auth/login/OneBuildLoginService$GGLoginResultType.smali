.class public final enum Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic $VALUES:[Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

.field public static final enum INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

.field public static final enum NOT_GOOGLE_SIGN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

.field public static final enum NOT_HSP_LOGIN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    const-string v1, "INIT"

    invoke-direct {v0, v1, v4, v2}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    const-string v1, "NOT_GOOGLE_SIGN"

    invoke-direct {v0, v1, v2, v3}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_GOOGLE_SIGN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    new-instance v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    const-string v1, "NOT_HSP_LOGIN"

    invoke-direct {v0, v1, v3, v5}, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_HSP_LOGIN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    new-array v0, v5, [Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->INIT:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_GOOGLE_SIGN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->NOT_HSP_LOGIN:Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->$VALUES:[Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;
    .locals 1

    const-class v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-object v0
.end method

.method public static values()[Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;
    .locals 1

    sget-object v0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->$VALUES:[Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    invoke-virtual {v0}, [Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/toastgamenew/hsp/auth/login/OneBuildLoginService$GGLoginResultType;->mValue:I

    return v0
.end method
