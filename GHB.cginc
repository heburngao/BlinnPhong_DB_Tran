    // Author : 高贺兵 微信: 13671767104
     fixed2 getBlink(){
                fixed4 a = fixed4(0,1,1,0);
                fixed4 b = fixed4(0,0,1,1);
                fixed totalFrame = 50;
                fixed speed = 5;
                fixed frame = floor(fmod(_Time.w*speed,totalFrame));
                fixed timer = 0; 
                fixed timer2 = 0; 
                fixed cellOffset = .5;
                if( frame == 0){
                    timer = a.r;
                    timer2 = b.r;
                }else if (frame == 1){
                    timer = a.g;
                    timer2 = b.g;
                }else if (frame == 2){
                    timer = a.b;
                    timer2 = b.b;
                }else if (frame == 3){
                    timer = a.a;
                    timer2 = b.a;
                }else{
                    timer = a.r;
                    timer2 = b.r;
                }
                 fixed tt =  timer  * cellOffset ; 
                 fixed tt2 = timer2 * cellOffset  ; 
                fixed2 offsett = fixed2(tt  ,tt2 );
                return offsett;
            }
            //sampler2D _Bump;
            // Compute normal from normal map 读取法线贴图信息
            //float3 GetNormalFromMap( v2f v )
            //{
            //    float3 tangentNormal = normalize( tex2D( _DiffBump, v.uv0.xy ).xyz * 2.0 - 1.0 );

            //    fixed3x3 norMatrix = fixed3x3(v.tangent0.xyz,v.binormal0.xyz,v.normal0.xyz);
            //    tangentNormal = mul(tangentNormal  , norMatrix);//matrix 在后　
                //或
                //tangentNormal = v.tangent0 * tangentNormal.x + v.binormal0 * tangentNormal.y + v.normal0 * tangentNormal.z;//TBN

            //    return tangentNormal;
            //}
