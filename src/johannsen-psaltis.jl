
"""

Automatically generated from SageMath calculations

Fergus Baker - 9th Nov 2021
             - 10th Feb 2022: updated to include Jacobian method

"""
module JohannsenPsaltisCoords

using ..ComputedGeodesicEquations

@inline function geodesic_eq(u, v, M, a, epsilon)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        out1 =
            -(
                2 *
                (
                    (
                        2 * M^3 * a^7 * epsilon * r^3 * cos_theta^4 -
                        M^5 * a^3 * epsilon^2 * r^4 +
                        2 * M^3 * a^3 * epsilon * r^7 +
                        (M^5 * a^5 * epsilon^2 * r^2 + 4 * M^3 * a^5 * epsilon * r^5) *
                        cos_theta^2
                    ) * sin_theta^4 -
                    (
                        4 * M^3 * a^3 * epsilon * r^7 +
                        6 * M^3 * a * epsilon * r^9 +
                        M * a^3 * r^10 +
                        3 * M * a * r^12 - (M * a^13 - M * a^11 * r^2) * cos_theta^10 -
                        (3 * M * a^11 * r^2 - 7 * M * a^9 * r^4) * cos_theta^8 -
                        2 *
                        (M^3 * a^9 * epsilon * r + M * a^9 * r^4 - 9 * M * a^7 * r^6) *
                        cos_theta^6 +
                        2 *
                        (
                            3 * M^3 * a^5 * epsilon * r^5 +
                            M * a^7 * r^6 +
                            11 * M * a^5 * r^8
                        ) *
                        cos_theta^4 +
                        (
                            6 * M^3 * a^5 * epsilon * r^5 +
                            12 * M^3 * a^3 * epsilon * r^7 +
                            3 * M * a^5 * r^8 +
                            13 * M * a^3 * r^10
                        ) * cos_theta^2
                    ) * sin_theta^2
                ) *
                v_phi *
                v_r +
                (
                    8 * M^3 * a^2 * epsilon * r^7 - 3 * M^2 * a^2 * epsilon * r^8 +
                    8 * M^3 * epsilon * r^9 +
                    2 * M * r^12 +
                    (2 * M * a^2 - 3 * M^2 * epsilon) * r^10 -
                    2 * (M * a^12 + M * a^10 * r^2) * cos_theta^10 +
                    (
                        M^2 * a^10 * epsilon - 6 * M * a^8 * r^4 -
                        (6 * M * a^10 - M^2 * a^8 * epsilon) * r^2
                    ) * cos_theta^8 -
                    4 *
                    (
                        M^3 * a^8 * epsilon * r +
                        M^3 * a^6 * epsilon * r^3 +
                        M * a^8 * r^4 +
                        M * a^6 * r^6
                    ) *
                    cos_theta^6 -
                    2 *
                    (
                        3 * M^2 * a^6 * epsilon * r^4 - 2 * M * a^4 * r^8 -
                        (2 * M * a^6 - 3 * M^2 * a^4 * epsilon) * r^6
                    ) *
                    cos_theta^4 +
                    2 *
                    (
                        6 * M^3 * a^4 * epsilon * r^5 - 4 * M^2 * a^4 * epsilon * r^6 +
                        6 * M^3 * a^2 * epsilon * r^7 +
                        3 * M * a^2 * r^10 +
                        (3 * M * a^4 - 4 * M^2 * a^2 * epsilon) * r^8
                    ) *
                    cos_theta^2 +
                    (
                        2 * M^5 * a^2 * epsilon^2 * r^4 - 3 * M^4 * a^2 * epsilon^2 * r^5 -
                        4 * M^3 * a^2 * epsilon * r^7 +
                        (M^4 * a^6 * epsilon^2 * r - 4 * M^3 * a^6 * epsilon * r^3) *
                        cos_theta^4 -
                        2 *
                        (
                            M^5 * a^4 * epsilon^2 * r^2 +
                            M^4 * a^4 * epsilon^2 * r^3 +
                            4 * M^3 * a^4 * epsilon * r^5
                        ) *
                        cos_theta^2
                    ) * sin_theta^2
                ) *
                v_r *
                v_t -
                4 *
                (
                    (
                        (M * a^13 * r - 2 * M^2 * a^11 * r^2 + M * a^11 * r^3) *
                        cos_theta^11 -
                        (
                            M * a^13 * r - 2 * M^2 * a^11 * r^2 - 3 * M * a^11 * r^3 +
                            8 * M^2 * a^9 * r^4 - 4 * M * a^9 * r^5
                        ) * cos_theta^9 +
                        2 *
                        (
                            M^3 * a^9 * epsilon * r^2 + M * a^9 * r^5 -
                            6 * M^2 * a^7 * r^6 +
                            3 * M * a^7 * r^7 +
                            (4 * M^2 * a^9 + M^3 * a^7 * epsilon) * r^4 -
                            2 * (M * a^11 + M^4 * a^7 * epsilon) * r^3
                        ) *
                        cos_theta^7 -
                        2 *
                        (
                            M^3 * a^9 * epsilon * r^2 - M^3 * a^7 * epsilon * r^4 +
                            M * a^7 * r^7 +
                            4 * M^2 * a^5 * r^8 - 2 * M * a^5 * r^9 -
                            2 * (3 * M^2 * a^7 + M^3 * a^5 * epsilon) * r^6 +
                            (3 * M * a^9 + 4 * M^4 * a^5 * epsilon) * r^5 -
                            (2 * M^4 * a^7 * epsilon - M^5 * a^5 * epsilon^2) * r^3
                        ) *
                        cos_theta^5 +
                        (
                            3 * M^5 * a^5 * epsilon^2 * r^3 -
                            2 * M^3 * a^5 * epsilon * r^6 - 3 * M * a^5 * r^9 -
                            2 * M^2 * a^3 * r^10 +
                            M * a^3 * r^11 +
                            2 * (4 * M^2 * a^5 + M^3 * a^3 * epsilon) * r^8 -
                            4 * (M * a^7 + M^4 * a^3 * epsilon) * r^7 +
                            (8 * M^4 * a^5 * epsilon - M^5 * a^3 * epsilon^2) * r^5 -
                            2 * (2 * M^3 * a^7 * epsilon + M^6 * a^3 * epsilon^2) * r^4
                        ) * cos_theta^3 -
                        (
                            M^5 * a^5 * epsilon^2 * r^3 - 2 * M^6 * a^3 * epsilon^2 * r^4 -
                            M^5 * a^3 * epsilon^2 * r^5 + 2 * M^3 * a^5 * epsilon * r^6 -
                            4 * M^4 * a^3 * epsilon * r^7 +
                            2 * M^3 * a^3 * epsilon * r^8 +
                            M * a^5 * r^9 - 2 * M^2 * a^3 * r^10 + M * a^3 * r^11
                        ) * cos_theta
                    ) *
                    v_phi *
                    sin_theta +
                    (
                        (M * a^12 * r - 2 * M^2 * a^10 * r^2 + M * a^10 * r^3) *
                        cos_theta^9 -
                        (
                            M^2 * a^10 * epsilon * r - M^3 * a^8 * epsilon * r^2 +
                            8 * M^2 * a^8 * r^4 - 4 * M * a^8 * r^5 -
                            (4 * M * a^10 - M^2 * a^8 * epsilon) * r^3
                        ) * cos_theta^7 +
                        (
                            5 * M^3 * a^6 * epsilon * r^4 - 12 * M^2 * a^6 * r^6 +
                            6 * M * a^6 * r^7 +
                            3 * (2 * M * a^8 - M^2 * a^6 * epsilon) * r^5 -
                            (4 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon * r^3 +
                            (2 * M^3 * a^8 * epsilon + M^4 * a^6 * epsilon^2) * r^2
                        ) * cos_theta^5 -
                        (
                            M^4 * a^6 * epsilon^2 * r^2 + M^5 * a^4 * epsilon^2 * r^3 -
                            7 * M^3 * a^4 * epsilon * r^6 + 8 * M^2 * a^4 * r^8 -
                            4 * M * a^4 * r^9 -
                            (4 * M * a^6 - 3 * M^2 * a^4 * epsilon) * r^7 +
                            (8 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon * r^5 -
                            (4 * M^3 * a^6 * epsilon + M^4 * a^4 * epsilon^2) * r^4
                        ) * cos_theta^3 +
                        (
                            M^5 * a^4 * epsilon^2 * r^3 +
                            2 * M^3 * a^4 * epsilon * r^6 +
                            3 * M^3 * a^2 * epsilon * r^8 - 2 * M^2 * a^2 * r^10 +
                            M * a^2 * r^11 +
                            (M * a^4 - M^2 * a^2 * epsilon) * r^9 -
                            (4 * M^4 * a^2 + M^2 * a^4) * epsilon * r^7 -
                            (2 * M^6 * a^2 + M^4 * a^4) * epsilon^2 * r^4
                        ) * cos_theta
                    ) *
                    v_t *
                    sin_theta
                ) *
                v_theta
            ) / (
                M^4 * a^2 * epsilon^2 * r^6 + 2 * M^2 * a^2 * epsilon * r^9 -
                2 * M^3 * epsilon * r^10 +
                M^2 * epsilon * r^11 +
                a^2 * r^12 - 2 * M * r^13 +
                r^14 +
                (a^14 - 2 * M * a^12 * r + a^12 * r^2) * cos_theta^12 -
                (
                    M^2 * a^10 * epsilon * r - 6 * a^12 * r^2 + 12 * M * a^10 * r^3 -
                    6 * a^10 * r^4
                ) * cos_theta^10 +
                (
                    2 * M^2 * a^10 * epsilon * r - 2 * M^3 * a^8 * epsilon * r^2 -
                    3 * M^2 * a^8 * epsilon * r^3 + 15 * a^10 * r^4 - 30 * M * a^8 * r^5 +
                    15 * a^8 * r^6
                ) * cos_theta^8 -
                (
                    M^4 * a^6 * epsilon^2 * r^2 - 8 * M^2 * a^8 * epsilon * r^3 +
                    8 * M^3 * a^6 * epsilon * r^4 +
                    2 * M^2 * a^6 * epsilon * r^5 - 20 * a^8 * r^6 + 40 * M * a^6 * r^7 -
                    20 * a^6 * r^8
                ) * cos_theta^6 +
                (
                    M^4 * a^6 * epsilon^2 * r^2 - 2 * M^4 * a^4 * epsilon^2 * r^4 +
                    12 * M^2 * a^6 * epsilon * r^5 - 12 * M^3 * a^4 * epsilon * r^6 +
                    2 * M^2 * a^4 * epsilon * r^7 +
                    15 * a^6 * r^8 - 30 * M * a^4 * r^9 + 15 * a^4 * r^10
                ) * cos_theta^4 +
                (
                    2 * M^4 * a^4 * epsilon^2 * r^4 - M^4 * a^2 * epsilon^2 * r^6 +
                    8 * M^2 * a^4 * epsilon * r^7 - 8 * M^3 * a^2 * epsilon * r^8 +
                    3 * M^2 * a^2 * epsilon * r^9 +
                    6 * a^4 * r^10 - 12 * M * a^2 * r^11 + 6 * a^2 * r^12
                ) * cos_theta^2
            )
        out2 =
            1 / 2 * (
                4 *
                (
                    (a^20 - 2 * M * a^18 * r + a^18 * r^2) * cos_theta^17 -
                    2 *
                    (
                        M^2 * a^16 * epsilon * r - 4 * a^18 * r^2 + 8 * M * a^16 * r^3 -
                        4 * a^16 * r^4
                    ) *
                    cos_theta^15 +
                    2 *
                    (
                        M^2 * a^16 * epsilon * r + M^3 * a^14 * epsilon * r^2 -
                        6 * M^2 * a^14 * epsilon * r^3 + 14 * a^16 * r^4 -
                        28 * M * a^14 * r^5 + 14 * a^14 * r^6
                    ) *
                    cos_theta^13 +
                    2 *
                    (
                        6 * M^2 * a^14 * epsilon * r^3 + 6 * M^3 * a^12 * epsilon * r^4 -
                        15 * M^2 * a^12 * epsilon * r^5 + 28 * a^14 * r^6 -
                        56 * M * a^12 * r^7 + 28 * a^12 * r^8
                    ) *
                    cos_theta^11 +
                    (
                        M^4 * a^12 * epsilon^2 * r^2 +
                        M^4 * a^10 * epsilon^2 * r^4 +
                        30 * M^2 * a^12 * epsilon * r^5 +
                        30 * M^3 * a^10 * epsilon * r^6 - 40 * M^2 * a^10 * epsilon * r^7 +
                        70 * a^12 * r^8 - 140 * M * a^10 * r^9 + 70 * a^10 * r^10
                    ) * cos_theta^9 +
                    2 *
                    (
                        2 * M^4 * a^10 * epsilon^2 * r^4 +
                        2 * M^4 * a^8 * epsilon^2 * r^6 +
                        20 * M^2 * a^10 * epsilon * r^7 +
                        20 * M^3 * a^8 * epsilon * r^8 - 15 * M^2 * a^8 * epsilon * r^9 +
                        28 * a^10 * r^10 - 56 * M * a^8 * r^11 + 28 * a^8 * r^12
                    ) *
                    cos_theta^7 +
                    2 *
                    (
                        3 * M^4 * a^8 * epsilon^2 * r^6 +
                        3 * M^4 * a^6 * epsilon^2 * r^8 +
                        15 * M^2 * a^8 * epsilon * r^9 +
                        15 * M^3 * a^6 * epsilon * r^10 - 6 * M^2 * a^6 * epsilon * r^11 +
                        14 * a^8 * r^12 - 28 * M * a^6 * r^13 + 14 * a^6 * r^14
                    ) *
                    cos_theta^5 +
                    2 *
                    (
                        2 * M^4 * a^6 * epsilon^2 * r^8 +
                        2 * M^4 * a^4 * epsilon^2 * r^10 +
                        6 * M^2 * a^6 * epsilon * r^11 +
                        6 * M^3 * a^4 * epsilon * r^12 - M^2 * a^4 * epsilon * r^13 +
                        4 * a^6 * r^14 - 8 * M * a^4 * r^15 + 4 * a^4 * r^16
                    ) *
                    cos_theta^3 +
                    (
                        M^4 * a^4 * epsilon^2 * r^10 +
                        M^4 * a^2 * epsilon^2 * r^12 +
                        2 * M^2 * a^4 * epsilon * r^13 +
                        2 * M^3 * a^2 * epsilon * r^14 +
                        a^4 * r^16 - 2 * M * a^2 * r^17 + a^2 * r^18
                    ) * cos_theta
                ) *
                v_r *
                v_theta *
                sin_theta -
                (
                    (
                        8 * M^7 * a^6 * epsilon^3 * r^5 +
                        3 * M^6 * a^6 * epsilon^3 * r^6 +
                        10 * M^5 * a^6 * epsilon^2 * r^8 +
                        2 * M^5 * a^4 * epsilon^2 * r^10 - 4 * M^4 * a^4 * epsilon * r^12 +
                        2 * M^3 * a^4 * epsilon * r^13 -
                        (16 * M^6 * a^4 - 3 * M^4 * a^6) * epsilon^2 * r^9 +
                        (2 * M^3 * a^6 * epsilon + 3 * M^4 * a^4 * epsilon^2) * r^11 -
                        2 *
                        (
                            M^3 * a^16 * epsilon * r - 2 * M^4 * a^14 * epsilon * r^2 +
                            M^3 * a^14 * epsilon * r^3
                        ) *
                        cos_theta^10 -
                        (
                            M^4 * a^14 * epsilon^2 * r - 4 * M^5 * a^12 * epsilon^2 * r^2 -
                            12 * M^4 * a^12 * epsilon * r^4 +
                            6 * M^3 * a^12 * epsilon * r^5 +
                            (6 * M^3 * a^14 * epsilon + M^4 * a^12 * epsilon^2) * r^3
                        ) * cos_theta^8 +
                        (
                            8 * M^6 * a^10 * epsilon^2 * r^3 -
                            2 * M^5 * a^10 * epsilon^2 * r^4 -
                            4 * M^3 * a^12 * epsilon * r^5 +
                            8 * M^4 * a^10 * epsilon * r^6 -
                            4 * M^3 * a^10 * epsilon * r^7 -
                            (6 * M^5 * a^12 * epsilon^2 - M^6 * a^10 * epsilon^3) * r^2
                        ) * cos_theta^6 -
                        (
                            M^6 * a^10 * epsilon^3 * r^2 - 4 * M^7 * a^8 * epsilon^3 * r^3 -
                            6 * M^4 * a^10 * epsilon^2 * r^5 +
                            14 * M^5 * a^8 * epsilon^2 * r^6 +
                            8 * M^4 * a^8 * epsilon * r^8 - 4 * M^3 * a^8 * epsilon * r^9 -
                            2 *
                            (2 * M^3 * a^10 * epsilon + 3 * M^4 * a^8 * epsilon^2) *
                            r^7 +
                            2 * (M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3) * r^4
                        ) * cos_theta^4 -
                        (
                            4 * M^7 * a^8 * epsilon^3 * r^3 -
                            2 * M^6 * a^8 * epsilon^3 * r^4 +
                            8 * M^7 * a^6 * epsilon^3 * r^5 +
                            6 * M^5 * a^6 * epsilon^2 * r^8 +
                            12 * M^4 * a^6 * epsilon * r^10 -
                            6 * M^3 * a^6 * epsilon * r^11 +
                            8 * (3 * M^6 * a^6 - M^4 * a^8) * epsilon^2 * r^7 -
                            2 *
                            (3 * M^3 * a^8 * epsilon + 4 * M^4 * a^6 * epsilon^2) *
                            r^9 -
                            (14 * M^5 * a^8 * epsilon^2 - 3 * M^6 * a^6 * epsilon^3) * r^6
                        ) * cos_theta^2
                    ) * sin_theta^6 +
                    (
                        8 * M^5 * a^6 * epsilon^2 * r^8 + 2 * M^5 * a^4 * epsilon^2 * r^10 -
                        8 * M^2 * a^4 * r^15 - 8 * M^2 * a^2 * r^17 +
                        2 * M * a^2 * r^18 +
                        (8 * M^3 * a^2 + 4 * M * a^4 + M^2 * a^2 * epsilon) * r^16 +
                        2 * (16 * M^5 * a^2 + 3 * M^3 * a^4) * epsilon * r^13 +
                        2 * (M * a^6 - 2 * (5 * M^4 * a^2 - M^2 * a^4) * epsilon) * r^14 -
                        2 *
                        (
                            M * a^20 - 4 * M^2 * a^18 * r - 4 * M^2 * a^16 * r^3 +
                            M * a^16 * r^4 +
                            2 * (2 * M^3 * a^16 + M * a^18) * r^2
                        ) *
                        cos_theta^14 - 3 * (12 * M^4 * a^4 - M^2 * a^6) * epsilon * r^12 -
                        (
                            M^2 * a^18 * epsilon - 6 * M^3 * a^16 * epsilon * r -
                            40 * M^2 * a^14 * r^5 +
                            10 * M * a^14 * r^6 +
                            (40 * M^3 * a^14 + 20 * M * a^16 + 3 * M^2 * a^14 * epsilon) *
                            r^4 - 10 * (4 * M^2 * a^16 + M^3 * a^14 * epsilon) * r^3 +
                            2 *
                            (5 * M * a^18 + 2 * (2 * M^4 * a^14 + M^2 * a^16) * epsilon) *
                            r^2
                        ) * cos_theta^12 -
                        (16 * M^6 * a^4 - 3 * M^4 * a^6) * epsilon^2 * r^9 +
                        (10 * M^3 * a^6 * epsilon + M^4 * a^4 * epsilon^2) * r^11 +
                        (
                            72 * M^2 * a^12 * r^7 - 18 * M * a^12 * r^8 -
                            2 *
                            (36 * M^3 * a^12 + 18 * M * a^14 + 7 * M^2 * a^12 * epsilon) *
                            r^6 + 2 * (36 * M^2 * a^14 + 17 * M^3 * a^12 * epsilon) * r^5 -
                            2 *
                            (9 * M * a^16 + 2 * (M^4 * a^12 + 4 * M^2 * a^14) * epsilon) *
                            r^4 +
                            (
                                3 * M^4 * a^12 * epsilon^2 -
                                4 * (4 * M^5 * a^12 - M^3 * a^14) * epsilon
                            ) * r^3 -
                            2 *
                            (
                                M^5 * a^12 * epsilon^2 -
                                (10 * M^4 * a^14 - M^2 * a^16) * epsilon
                            ) *
                            r^2 - (6 * M^3 * a^16 * epsilon - M^4 * a^14 * epsilon^2) * r
                        ) * cos_theta^10 -
                        (
                            M^4 * a^14 * epsilon^2 * r - 6 * M^5 * a^12 * epsilon^2 * r^2 -
                            40 * M^2 * a^10 * r^9 +
                            10 * M * a^10 * r^10 +
                            5 *
                            (8 * M^3 * a^10 + 4 * M * a^12 + 5 * M^2 * a^10 * epsilon) *
                            r^8 - 4 * (10 * M^2 * a^12 + 9 * M^3 * a^10 * epsilon) * r^7 +
                            2 *
                            (
                                5 * M * a^14 -
                                2 * (11 * M^4 * a^10 - 5 * M^2 * a^12) * epsilon
                            ) *
                            r^6 -
                            2 *
                            (
                                4 * M^4 * a^10 * epsilon^2 -
                                (16 * M^5 * a^10 + 19 * M^3 * a^12) * epsilon
                            ) *
                            r^5 -
                            (
                                4 * M^5 * a^10 * epsilon^2 +
                                (44 * M^4 * a^12 + 5 * M^2 * a^14) * epsilon
                            ) * r^4 +
                            (
                                14 * M^3 * a^14 * epsilon +
                                (8 * M^6 * a^10 + 3 * M^4 * a^12) * epsilon^2
                            ) * r^3
                        ) * cos_theta^8 -
                        2 *
                        (
                            2 * M^5 * a^12 * epsilon^2 * r^2 -
                            4 * M^6 * a^10 * epsilon^2 * r^3 +
                            2 * M^5 * a^10 * epsilon^2 * r^4 +
                            20 * M^2 * a^8 * r^11 - 5 * M * a^8 * r^12 -
                            10 * (2 * M^3 * a^8 + M * a^10 - M^2 * a^8 * epsilon) * r^10 +
                            2 * (10 * M^2 * a^10 - M^3 * a^8 * epsilon) * r^9 -
                            (5 * M * a^12 + 28 * M^4 * a^8 * epsilon) * r^8 -
                            (
                                3 * M^4 * a^8 * epsilon^2 +
                                4 * (4 * M^5 * a^8 - 9 * M^3 * a^10) * epsilon
                            ) * r^7 -
                            2 *
                            (
                                3 * M^5 * a^8 * epsilon^2 -
                                (6 * M^4 * a^10 - 5 * M^2 * a^12) * epsilon
                            ) *
                            r^6 -
                            (2 * M^3 * a^12 * epsilon - 7 * M^4 * a^10 * epsilon^2) * r^5
                        ) *
                        cos_theta^6 +
                        (
                            6 * M^4 * a^10 * epsilon^2 * r^5 -
                            24 * M^5 * a^8 * epsilon^2 * r^6 - 72 * M^2 * a^6 * r^13 +
                            18 * M * a^6 * r^14 +
                            (72 * M^3 * a^6 + 36 * M * a^8 - 5 * M^2 * a^6 * epsilon) * r^12 -
                            2 * (36 * M^2 * a^8 + 7 * M^3 * a^6 * epsilon) * r^11 +
                            2 * (64 * M^5 * a^6 - 19 * M^3 * a^8) * epsilon * r^9 +
                            2 *
                            (9 * M * a^10 - 2 * (4 * M^4 * a^6 - 5 * M^2 * a^8) * epsilon) *
                            r^10 +
                            (
                                4 * M^5 * a^6 * epsilon^2 -
                                (136 * M^4 * a^8 - 25 * M^2 * a^10) * epsilon
                            ) * r^8 +
                            2 *
                            (
                                18 * M^3 * a^10 * epsilon +
                                (12 * M^6 * a^6 - 7 * M^4 * a^8) * epsilon^2
                            ) *
                            r^7
                        ) * cos_theta^4 +
                        (
                            12 * M^5 * a^8 * epsilon^2 * r^6 -
                            12 * M^5 * a^6 * epsilon^2 * r^8 - 40 * M^2 * a^4 * r^15 +
                            10 * M * a^4 * r^16 +
                            2 * (20 * M^3 * a^4 + 10 * M * a^6 + M^2 * a^4 * epsilon) * r^14 -
                            2 * (20 * M^2 * a^6 + 3 * M^3 * a^4 * epsilon) * r^13 +
                            2 *
                            (5 * M * a^8 - 2 * (13 * M^4 * a^4 - 4 * M^2 * a^6) * epsilon) *
                            r^12 -
                            (
                                M^4 * a^4 * epsilon^2 -
                                4 * (28 * M^5 * a^4 + M^3 * a^6) * epsilon
                            ) * r^11 -
                            2 *
                            (
                                M^5 * a^4 * epsilon^2 +
                                (62 * M^4 * a^6 - 7 * M^2 * a^8) * epsilon
                            ) *
                            r^10 - 8 * (3 * M^6 * a^6 - M^4 * a^8) * epsilon^2 * r^7 +
                            (
                                34 * M^3 * a^8 * epsilon +
                                (16 * M^6 * a^4 - 3 * M^4 * a^6) * epsilon^2
                            ) * r^9
                        ) * cos_theta^2
                    ) * sin_theta^4 -
                    2 *
                    (
                        M^2 * a^4 * epsilon * r^14 - 2 * M^3 * a^2 * epsilon * r^15 +
                        M^2 * a^2 * epsilon * r^16 +
                        a^4 * r^17 - 4 * M * a^2 * r^18 - 4 * M * r^20 +
                        r^21 +
                        2 * (2 * M^2 + a^2) * r^19 +
                        (
                            a^20 * r - 4 * M * a^18 * r^2 - 4 * M * a^16 * r^4 +
                            a^16 * r^5 +
                            2 * (2 * M^2 * a^16 + a^18) * r^3
                        ) * cos_theta^16 -
                        (
                            M^2 * a^16 * epsilon * r^2 + 32 * M * a^14 * r^6 -
                            8 * a^14 * r^7 - 16 * (2 * M^2 * a^14 + a^16) * r^5 +
                            (32 * M * a^16 + M^2 * a^14 * epsilon) * r^4 -
                            2 * (4 * a^18 + M^3 * a^14 * epsilon) * r^3
                        ) * cos_theta^14 +
                        (
                            M^2 * a^16 * epsilon * r^2 - 2 * M^3 * a^14 * epsilon * r^3 -
                            5 * M^2 * a^14 * epsilon * r^4 - 112 * M * a^12 * r^8 +
                            28 * a^12 * r^9 +
                            56 * (2 * M^2 * a^12 + a^14) * r^7 -
                            2 * (56 * M * a^14 + 3 * M^2 * a^12 * epsilon) * r^6 +
                            4 * (7 * a^16 + 3 * M^3 * a^12 * epsilon) * r^5
                        ) * cos_theta^12 +
                        (
                            6 * M^2 * a^14 * epsilon * r^4 -
                            12 * M^3 * a^12 * epsilon * r^5 -
                            9 * M^2 * a^12 * epsilon * r^6 - 224 * M * a^10 * r^10 +
                            56 * a^10 * r^11 +
                            112 * (2 * M^2 * a^10 + a^12) * r^9 -
                            (224 * M * a^12 + 15 * M^2 * a^10 * epsilon) * r^8 +
                            2 * (28 * a^14 + 15 * M^3 * a^10 * epsilon) * r^7
                        ) * cos_theta^10 +
                        5 *
                        (
                            3 * M^2 * a^12 * epsilon * r^6 -
                            6 * M^3 * a^10 * epsilon * r^7 - M^2 * a^10 * epsilon * r^8 -
                            56 * M * a^8 * r^12 +
                            14 * a^8 * r^13 +
                            28 * (2 * M^2 * a^8 + a^10) * r^11 -
                            4 * (14 * M * a^10 + M^2 * a^8 * epsilon) * r^10 +
                            2 * (7 * a^12 + 4 * M^3 * a^8 * epsilon) * r^9
                        ) *
                        cos_theta^8 +
                        (
                            20 * M^2 * a^10 * epsilon * r^8 -
                            40 * M^3 * a^8 * epsilon * r^9 +
                            5 * M^2 * a^8 * epsilon * r^10 - 224 * M * a^6 * r^14 +
                            56 * a^6 * r^15 +
                            112 * (2 * M^2 * a^6 + a^8) * r^13 -
                            (224 * M * a^8 + 15 * M^2 * a^6 * epsilon) * r^12 +
                            2 * (28 * a^10 + 15 * M^3 * a^6 * epsilon) * r^11
                        ) * cos_theta^6 +
                        (
                            15 * M^2 * a^8 * epsilon * r^10 -
                            30 * M^3 * a^6 * epsilon * r^11 +
                            9 * M^2 * a^6 * epsilon * r^12 - 112 * M * a^4 * r^16 +
                            28 * a^4 * r^17 +
                            56 * (2 * M^2 * a^4 + a^6) * r^15 -
                            2 * (56 * M * a^6 + 3 * M^2 * a^4 * epsilon) * r^14 +
                            4 * (7 * a^8 + 3 * M^3 * a^4 * epsilon) * r^13
                        ) * cos_theta^4 +
                        (
                            6 * M^2 * a^6 * epsilon * r^12 -
                            12 * M^3 * a^4 * epsilon * r^13 +
                            5 * M^2 * a^4 * epsilon * r^14 - 32 * M * a^2 * r^18 +
                            8 * a^2 * r^19 +
                            16 * (2 * M^2 * a^2 + a^4) * r^17 -
                            (32 * M * a^4 + M^2 * a^2 * epsilon) * r^16 +
                            2 * (4 * a^6 + M^3 * a^2 * epsilon) * r^15
                        ) * cos_theta^2
                    ) *
                    sin_theta^2
                ) * v_phi^2 -
                (
                    2 * M^4 * a^2 * epsilon^2 * r^11 +
                    4 * M^2 * a^2 * epsilon * r^14 +
                    4 * M^3 * epsilon * r^15 - 3 * M^2 * epsilon * r^16 + 2 * a^2 * r^17 -
                    2 * M * r^18 +
                    2 * (M * a^18 - a^18 * r) * cos_theta^18 +
                    (
                        M^2 * a^16 * epsilon + 2 * a^18 * r + 14 * M * a^16 * r^2 -
                        16 * a^16 * r^3
                    ) * cos_theta^16 +
                    8 *
                    (2 * a^16 * r^3 + 5 * M * a^14 * r^4 - 7 * a^14 * r^5) *
                    cos_theta^14 +
                    4 *
                    (
                        M^2 * a^14 * epsilon * r^2 + M^3 * a^12 * epsilon * r^3 -
                        6 * M^2 * a^12 * epsilon * r^4 +
                        14 * a^14 * r^5 +
                        14 * M * a^12 * r^6 - 28 * a^12 * r^7
                    ) *
                    cos_theta^12 -
                    2 *
                    (
                        M^4 * a^10 * epsilon^2 * r^3 - 12 * M^2 * a^12 * epsilon * r^4 -
                        12 * M^3 * a^10 * epsilon * r^5 + 44 * M^2 * a^10 * epsilon * r^6 -
                        56 * a^12 * r^7 - 14 * M * a^10 * r^8 + 70 * a^10 * r^9
                    ) *
                    cos_theta^10 +
                    2 *
                    (
                        M^4 * a^10 * epsilon^2 * r^3 - 4 * M^4 * a^8 * epsilon^2 * r^5 +
                        30 * M^2 * a^10 * epsilon * r^6 +
                        30 * M^3 * a^8 * epsilon * r^7 - 75 * M^2 * a^8 * epsilon * r^8 +
                        70 * a^10 * r^9 - 14 * M * a^8 * r^10 - 56 * a^8 * r^11
                    ) *
                    cos_theta^8 +
                    4 *
                    (
                        2 * M^4 * a^8 * epsilon^2 * r^5 - 3 * M^4 * a^6 * epsilon^2 * r^7 +
                        20 * M^2 * a^8 * epsilon * r^8 +
                        20 * M^3 * a^6 * epsilon * r^9 - 36 * M^2 * a^6 * epsilon * r^10 +
                        28 * a^8 * r^11 - 14 * M * a^6 * r^12 - 14 * a^6 * r^13
                    ) *
                    cos_theta^6 +
                    4 *
                    (
                        3 * M^4 * a^6 * epsilon^2 * r^7 - 2 * M^4 * a^4 * epsilon^2 * r^9 +
                        15 * M^2 * a^6 * epsilon * r^10 +
                        15 * M^3 * a^4 * epsilon * r^11 - 20 * M^2 * a^4 * epsilon * r^12 +
                        14 * a^6 * r^13 - 10 * M * a^4 * r^14 - 4 * a^4 * r^15
                    ) *
                    cos_theta^4 +
                    2 *
                    (
                        4 * M^4 * a^4 * epsilon^2 * r^9 - M^4 * a^2 * epsilon^2 * r^11 +
                        12 * M^2 * a^4 * epsilon * r^12 +
                        12 * M^3 * a^2 * epsilon * r^13 - 12 * M^2 * a^2 * epsilon * r^14 +
                        8 * a^4 * r^15 - 7 * M * a^2 * r^16 - a^2 * r^17
                    ) *
                    cos_theta^2
                ) * v_r^2 +
                4 *
                (
                    4 * M^7 * a^5 * epsilon^3 * r^5 + 9 * M^5 * a^5 * epsilon^2 * r^8 -
                    16 * M^6 * a^3 * epsilon^2 * r^9 +
                    8 * M^5 * a^3 * epsilon^2 * r^10 +
                    6 * M^3 * a^5 * epsilon * r^11 - 20 * M^4 * a^3 * epsilon * r^12 -
                    4 * M^2 * a * r^17 +
                    M * a * r^18 +
                    2 * (2 * M^3 * a + M * a^3) * r^16 +
                    (
                        M * a^19 - 4 * M^2 * a^17 * r - 4 * M^2 * a^15 * r^3 +
                        M * a^15 * r^4 +
                        2 * (2 * M^3 * a^15 + M * a^17) * r^2
                    ) * cos_theta^16 - 4 * (M^2 * a^3 - M^3 * a * epsilon) * r^15 +
                    2 * (8 * M^5 * a + 5 * M^3 * a^3) * epsilon * r^13 +
                    (M * a^5 - 16 * M^4 * a * epsilon) * r^14 -
                    (
                        M * a^19 + 20 * M^2 * a^13 * r^5 - 5 * M * a^13 * r^6 -
                        (20 * M^3 * a^13 + 9 * M * a^15) * r^4 +
                        2 * (8 * M^2 * a^15 + M^3 * a^13 * epsilon) * r^3 +
                        (4 * M^3 * a^15 - 3 * M * a^17 - 4 * M^4 * a^13 * epsilon) * r^2 -
                        2 * (2 * M^2 * a^17 - M^3 * a^15 * epsilon) * r
                    ) * cos_theta^14 +
                    (
                        6 * M^3 * a^15 * epsilon * r - 36 * M^2 * a^11 * r^7 +
                        9 * M * a^11 * r^8 +
                        (36 * M^3 * a^11 + 13 * M * a^13) * r^6 -
                        4 * (4 * M^2 * a^13 + M^3 * a^11 * epsilon) * r^5 -
                        (20 * M^3 * a^13 + M * a^15 - 4 * M^4 * a^11 * epsilon) * r^4 +
                        2 *
                        (10 * M^2 * a^15 + (4 * M^5 * a^11 + M^3 * a^13) * epsilon) *
                        r^3 -
                        (
                            5 * M * a^17 + 16 * M^4 * a^13 * epsilon -
                            M^5 * a^11 * epsilon^2
                        ) * r^2
                    ) * cos_theta^12 -
                    (
                        4 * M^3 * a^15 * epsilon * r - 16 * M^2 * a^11 * r^7 +
                        20 * M^2 * a^9 * r^9 - 5 * M * a^9 * r^10 -
                        (20 * M^3 * a^9 + M * a^11) * r^8 +
                        (36 * M^3 * a^11 + 13 * M * a^13 + 8 * M^4 * a^9 * epsilon) * r^6 -
                        2 *
                        (18 * M^2 * a^13 + (8 * M^5 * a^9 + 7 * M^3 * a^11) * epsilon) *
                        r^5 +
                        (
                            9 * M * a^15 +
                            32 * M^4 * a^11 * epsilon +
                            3 * M^5 * a^9 * epsilon^2
                        ) * r^4 -
                        2 *
                        (
                            4 * M^6 * a^9 * epsilon^2 -
                            (4 * M^5 * a^11 - 5 * M^3 * a^13) * epsilon
                        ) *
                        r^3 -
                        (12 * M^4 * a^13 * epsilon - 7 * M^5 * a^11 * epsilon^2) * r^2
                    ) * cos_theta^10 +
                    (
                        11 * M^5 * a^11 * epsilon^2 * r^2 +
                        40 * M^2 * a^9 * r^9 +
                        20 * M^2 * a^7 * r^11 - 5 * M * a^7 * r^12 -
                        5 * (4 * M^3 * a^7 + 3 * M * a^9) * r^10 -
                        (20 * M^3 * a^9 + 15 * M * a^11 - 8 * M^4 * a^7 * epsilon) * r^8 +
                        4 * (5 * M^2 * a^11 - 4 * M^5 * a^7 * epsilon) * r^7 -
                        2 * (8 * M^5 * a^9 + 5 * M^3 * a^11) * epsilon * r^5 -
                        (5 * M * a^13 - 16 * M^4 * a^9 * epsilon + M^5 * a^7 * epsilon^2) *
                        r^6 +
                        (28 * M^4 * a^11 * epsilon + 5 * M^5 * a^9 * epsilon^2) * r^4 -
                        2 *
                        (
                            5 * M^3 * a^13 * epsilon + 8 * M^6 * a^9 * epsilon^2 -
                            M^7 * a^7 * epsilon^3
                        ) *
                        r^3
                    ) * cos_theta^8 -
                    (
                        5 * M^5 * a^11 * epsilon^2 * r^2 +
                        M^5 * a^9 * epsilon^2 * r^4 +
                        4 * M^7 * a^5 * epsilon^3 * r^5 - 36 * M^2 * a^5 * r^13 +
                        9 * M * a^5 * r^14 +
                        (36 * M^3 * a^5 + 13 * M * a^7) * r^12 -
                        2 * (8 * M^2 * a^7 - 5 * M^3 * a^5 * epsilon) * r^11 -
                        (20 * M^3 * a^7 + M * a^9 + 52 * M^4 * a^5 * epsilon) * r^10 +
                        2 *
                        (10 * M^2 * a^9 + (32 * M^5 * a^5 + 15 * M^3 * a^7) * epsilon) *
                        r^9 -
                        (
                            5 * M * a^11 +
                            64 * M^4 * a^7 * epsilon +
                            11 * M^5 * a^5 * epsilon^2
                        ) * r^8 +
                        4 *
                        (
                            6 * M^6 * a^5 * epsilon^2 -
                            (4 * M^5 * a^7 - 5 * M^3 * a^9) * epsilon
                        ) *
                        r^7 +
                        (8 * M^4 * a^9 * epsilon - 15 * M^5 * a^7 * epsilon^2) * r^6 -
                        2 * (4 * M^6 * a^9 * epsilon^2 - 3 * M^7 * a^7 * epsilon^3) * r^3
                    ) * cos_theta^6 +
                    (
                        6 * M^7 * a^7 * epsilon^3 * r^3 - M^5 * a^9 * epsilon^2 * r^4 +
                        12 * M^7 * a^5 * epsilon^3 * r^5 -
                        27 * M^5 * a^7 * epsilon^2 * r^6 + 20 * M^2 * a^3 * r^15 -
                        5 * M * a^3 * r^16 - (20 * M^3 * a^3 + M * a^5) * r^14 -
                        4 * (4 * M^2 * a^5 + 3 * M^3 * a^3 * epsilon) * r^13 +
                        (36 * M^3 * a^5 + 13 * M * a^7 + 52 * M^4 * a^3 * epsilon) * r^12 -
                        2 *
                        (18 * M^2 * a^7 + (28 * M^5 * a^3 + 11 * M^3 * a^5) * epsilon) *
                        r^11 +
                        (
                            9 * M * a^9 +
                            16 * M^4 * a^5 * epsilon +
                            8 * M^5 * a^3 * epsilon^2
                        ) * r^10 -
                        2 *
                        (
                            8 * M^6 * a^3 * epsilon^2 -
                            (32 * M^5 * a^5 + 5 * M^3 * a^7) * epsilon
                        ) *
                        r^9 -
                        (72 * M^4 * a^7 * epsilon + 13 * M^5 * a^5 * epsilon^2) * r^8 +
                        4 * (5 * M^3 * a^9 * epsilon + 12 * M^6 * a^5 * epsilon^2) * r^7
                    ) * cos_theta^4 -
                    (
                        2 * M^7 * a^7 * epsilon^3 * r^3 + 12 * M^7 * a^5 * epsilon^3 * r^5 -
                        13 * M^5 * a^7 * epsilon^2 * r^6 +
                        24 * M^6 * a^5 * epsilon^2 * r^7 +
                        7 * M^5 * a^5 * epsilon^2 * r^8 - 4 * M^2 * a * r^17 +
                        M * a * r^18 +
                        (4 * M^3 * a - 3 * M * a^3) * r^16 +
                        4 * (4 * M^2 * a^3 + M^3 * a * epsilon) * r^15 -
                        (20 * M^3 * a^3 + 9 * M * a^5 + 16 * M^4 * a * epsilon) * r^14 +
                        2 * (10 * M^2 * a^5 + (8 * M^5 * a - M^3 * a^3) * epsilon) * r^13 -
                        2 * (28 * M^5 * a^3 + 13 * M^3 * a^5) * epsilon * r^11 -
                        (5 * M * a^7 - 32 * M^4 * a^3 * epsilon) * r^12 +
                        4 * (17 * M^4 * a^5 * epsilon + 4 * M^5 * a^3 * epsilon^2) * r^10 -
                        4 * (5 * M^3 * a^7 * epsilon + 8 * M^6 * a^3 * epsilon^2) * r^9
                    ) * cos_theta^2
                ) *
                v_phi *
                v_t -
                (
                    8 * M^7 * a^4 * epsilon^3 * r^5 - 3 * M^6 * a^4 * epsilon^3 * r^6 +
                    18 * M^5 * a^4 * epsilon^2 * r^8 +
                    28 * M^5 * a^2 * epsilon^2 * r^10 - 8 * M^2 * r^17 +
                    2 * M * r^18 +
                    (8 * M^3 + 4 * M * a^2 - 3 * M^2 * epsilon) * r^16 -
                    4 * (2 * M^2 * a^2 - 5 * M^3 * epsilon) * r^15 +
                    32 * (M^5 + M^3 * a^2) * epsilon * r^13 +
                    2 * (M * a^4 - (22 * M^4 + 3 * M^2 * a^2) * epsilon) * r^14 -
                    2 *
                    (
                        M * a^18 - 4 * M^2 * a^16 * r - 4 * M^2 * a^14 * r^3 +
                        M * a^14 * r^4 +
                        2 * (2 * M^3 * a^14 + M * a^16) * r^2
                    ) *
                    cos_theta^14 - (40 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon * r^12 +
                    (
                        M^2 * a^16 * epsilon +
                        40 * M^2 * a^14 * r^3 +
                        40 * M^2 * a^12 * r^5 - 10 * M * a^12 * r^6 -
                        (40 * M^3 * a^12 + 20 * M * a^14 - M^2 * a^12 * epsilon) * r^4 -
                        2 * (5 * M * a^16 + (2 * M^4 * a^12 - M^2 * a^14) * epsilon) * r^2
                    ) * cos_theta^12 -
                    2 * (16 * M^6 * a^2 + 3 * M^4 * a^4) * epsilon^2 * r^9 +
                    6 * (2 * M^3 * a^4 * epsilon - M^4 * a^2 * epsilon^2) * r^11 +
                    2 *
                    (
                        36 * M^2 * a^12 * r^5 + 36 * M^2 * a^10 * r^7 - 9 * M * a^10 * r^8 -
                        (36 * M^3 * a^10 + 18 * M * a^12 - M^2 * a^10 * epsilon) * r^6 -
                        (9 * M * a^14 - 2 * M^2 * a^12 * epsilon) * r^4 -
                        (
                            M^4 * a^10 * epsilon^2 +
                            4 * (2 * M^5 * a^10 + M^3 * a^12) * epsilon
                        ) * r^3 +
                        (
                            M^5 * a^10 * epsilon^2 +
                            (12 * M^4 * a^12 + M^2 * a^14) * epsilon
                        ) * r^2 - (4 * M^3 * a^14 * epsilon + M^4 * a^12 * epsilon^2) * r
                    ) *
                    cos_theta^10 +
                    (
                        2 * M^4 * a^12 * epsilon^2 * r - 32 * M^5 * a^8 * epsilon * r^5 +
                        40 * M^2 * a^8 * r^9 - 10 * M * a^8 * r^10 -
                        5 * (8 * M^3 * a^8 + 4 * M * a^10 + M^2 * a^8 * epsilon) * r^8 +
                        20 * (2 * M^2 * a^10 + M^3 * a^8 * epsilon) * r^7 -
                        2 *
                        (5 * M * a^12 + (2 * M^4 * a^8 + 5 * M^2 * a^10) * epsilon) *
                        r^6 +
                        (
                            6 * M^5 * a^8 * epsilon^2 +
                            (56 * M^4 * a^10 - 5 * M^2 * a^12) * epsilon
                        ) * r^4 -
                        2 *
                        (
                            10 * M^3 * a^12 * epsilon +
                            (8 * M^6 * a^8 - M^4 * a^10) * epsilon^2
                        ) *
                        r^3 + (8 * M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3) * r^2
                    ) * cos_theta^8 +
                    2 *
                    (
                        6 * M^4 * a^8 * epsilon^2 * r^5 - 20 * M^2 * a^6 * r^11 +
                        5 * M * a^6 * r^12 +
                        10 * (2 * M^3 * a^6 + M * a^8 - M^2 * a^6 * epsilon) * r^10 -
                        20 * (M^2 * a^8 - 2 * M^3 * a^6 * epsilon) * r^9 +
                        (5 * M * a^10 - 4 * (12 * M^4 * a^6 + 5 * M^2 * a^8) * epsilon) *
                        r^8 +
                        2 *
                        (
                            3 * M^4 * a^6 * epsilon^2 +
                            4 * (2 * M^5 * a^6 + 5 * M^3 * a^8) * epsilon
                        ) *
                        r^7 -
                        (
                            11 * M^5 * a^6 * epsilon^2 +
                            2 * (4 * M^4 * a^8 + 5 * M^2 * a^10) * epsilon
                        ) * r^6 -
                        (2 * M^5 * a^8 * epsilon^2 + M^6 * a^6 * epsilon^3) * r^4 +
                        2 * (4 * M^6 * a^8 * epsilon^2 - M^7 * a^6 * epsilon^3) * r^3 -
                        (5 * M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3) * r^2
                    ) *
                    cos_theta^6 +
                    (
                        M^6 * a^8 * epsilon^3 * r^2 + 8 * M^7 * a^6 * epsilon^3 * r^3 -
                        72 * M^2 * a^4 * r^13 +
                        18 * M * a^4 * r^14 +
                        (72 * M^3 * a^4 + 36 * M * a^6 - 25 * M^2 * a^4 * epsilon) * r^12 -
                        24 * (3 * M^2 * a^6 - 5 * M^3 * a^4 * epsilon) * r^11 +
                        2 *
                        (9 * M * a^8 - (102 * M^4 * a^4 + 25 * M^2 * a^6) * epsilon) *
                        r^10 +
                        16 *
                        (
                            M^4 * a^4 * epsilon^2 +
                            2 * (4 * M^5 * a^4 + 5 * M^3 * a^6) * epsilon
                        ) *
                        r^9 -
                        (
                            54 * M^5 * a^4 * epsilon^2 +
                            (144 * M^4 * a^6 + 25 * M^2 * a^8) * epsilon
                        ) * r^8 +
                        4 *
                        (
                            10 * M^3 * a^8 * epsilon +
                            (12 * M^6 * a^4 + M^4 * a^6) * epsilon^2
                        ) *
                        r^7 -
                        (4 * M^5 * a^6 * epsilon^2 + 3 * M^6 * a^4 * epsilon^3) * r^6 -
                        4 * (3 * M^4 * a^8 * epsilon^2 - 2 * M^7 * a^4 * epsilon^3) * r^5 -
                        2 * (M^5 * a^8 * epsilon^2 - 2 * M^6 * a^6 * epsilon^3) * r^4
                    ) * cos_theta^4 -
                    2 *
                    (
                        2 * M^7 * a^6 * epsilon^3 * r^3 +
                        M^6 * a^6 * epsilon^3 * r^4 +
                        8 * M^7 * a^4 * epsilon^3 * r^5 - 18 * M^5 * a^4 * epsilon^2 * r^8 +
                        20 * M^2 * a^2 * r^15 - 5 * M * a^2 * r^16 -
                        (20 * M^3 * a^2 + 10 * M * a^4 - 7 * M^2 * a^2 * epsilon) * r^14 +
                        20 * (M^2 * a^4 - 2 * M^3 * a^2 * epsilon) * r^13 -
                        (5 * M * a^6 - 2 * (40 * M^4 * a^2 + 7 * M^2 * a^4) * epsilon) *
                        r^12 -
                        (
                            3 * M^4 * a^2 * epsilon^2 +
                            4 * (14 * M^5 * a^2 + 15 * M^3 * a^4) * epsilon
                        ) * r^11 +
                        (
                            14 * M^5 * a^2 * epsilon^2 +
                            (68 * M^4 * a^4 + 7 * M^2 * a^6) * epsilon
                        ) * r^10 +
                        8 * (3 * M^6 * a^4 + M^4 * a^6) * epsilon^2 * r^7 -
                        (
                            20 * M^3 * a^6 * epsilon +
                            (16 * M^6 * a^2 - 5 * M^4 * a^4) * epsilon^2
                        ) * r^9 -
                        (13 * M^5 * a^6 * epsilon^2 + 3 * M^6 * a^4 * epsilon^3) * r^6
                    ) *
                    cos_theta^2
                ) * v_t^2 +
                2 *
                (
                    M^4 * a^4 * epsilon^2 * r^11 + 2 * M^2 * a^4 * epsilon * r^14 -
                    4 * M^3 * a^2 * epsilon * r^15 +
                    2 * M^2 * a^2 * epsilon * r^16 +
                    a^4 * r^17 - 4 * M * a^2 * r^18 - 4 * M * r^20 +
                    r^21 +
                    2 * (2 * M^2 + a^2) * r^19 +
                    (
                        a^20 * r - 4 * M * a^18 * r^2 - 4 * M * a^16 * r^4 +
                        a^16 * r^5 +
                        2 * (2 * M^2 * a^16 + a^18) * r^3
                    ) * cos_theta^16 -
                    2 *
                    (
                        M^2 * a^16 * epsilon * r^2 + 16 * M * a^14 * r^6 - 4 * a^14 * r^7 -
                        8 * (2 * M^2 * a^14 + a^16) * r^5 +
                        (16 * M * a^16 + M^2 * a^14 * epsilon) * r^4 -
                        2 * (2 * a^18 + M^3 * a^14 * epsilon) * r^3
                    ) *
                    cos_theta^14 +
                    (
                        2 * M^2 * a^16 * epsilon * r^2 - 10 * M^2 * a^14 * epsilon * r^4 -
                        112 * M * a^12 * r^8 +
                        28 * a^12 * r^9 +
                        56 * (2 * M^2 * a^12 + a^14) * r^7 -
                        4 * (28 * M * a^14 + 3 * M^2 * a^12 * epsilon) * r^6 +
                        4 * (7 * a^16 + 6 * M^3 * a^12 * epsilon) * r^5 -
                        (4 * M^3 * a^14 * epsilon - M^4 * a^12 * epsilon^2) * r^3
                    ) * cos_theta^12 -
                    2 *
                    (
                        M^4 * a^12 * epsilon^2 * r^3 - 6 * M^2 * a^14 * epsilon * r^4 +
                        9 * M^2 * a^12 * epsilon * r^6 +
                        112 * M * a^10 * r^10 - 28 * a^10 * r^11 -
                        56 * (2 * M^2 * a^10 + a^12) * r^9 +
                        (112 * M * a^12 + 15 * M^2 * a^10 * epsilon) * r^8 -
                        2 * (14 * a^14 + 15 * M^3 * a^10 * epsilon) * r^7 +
                        2 * (6 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * r^5
                    ) *
                    cos_theta^10 +
                    (
                        M^4 * a^12 * epsilon^2 * r^3 - 8 * M^4 * a^10 * epsilon^2 * r^5 +
                        30 * M^2 * a^12 * epsilon * r^6 - 10 * M^2 * a^10 * epsilon * r^8 -
                        280 * M * a^8 * r^12 +
                        70 * a^8 * r^13 +
                        140 * (2 * M^2 * a^8 + a^10) * r^11 -
                        40 * (7 * M * a^10 + M^2 * a^8 * epsilon) * r^10 +
                        10 * (7 * a^12 + 8 * M^3 * a^8 * epsilon) * r^9 -
                        6 * (10 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * r^7
                    ) * cos_theta^8 +
                    2 *
                    (
                        2 * M^4 * a^10 * epsilon^2 * r^5 - 6 * M^4 * a^8 * epsilon^2 * r^7 +
                        20 * M^2 * a^10 * epsilon * r^8 +
                        5 * M^2 * a^8 * epsilon * r^10 - 112 * M * a^6 * r^14 +
                        28 * a^6 * r^15 +
                        56 * (2 * M^2 * a^6 + a^8) * r^13 -
                        (112 * M * a^8 + 15 * M^2 * a^6 * epsilon) * r^12 +
                        2 * (14 * a^10 + 15 * M^3 * a^6 * epsilon) * r^11 -
                        2 * (20 * M^3 * a^8 * epsilon - M^4 * a^6 * epsilon^2) * r^9
                    ) *
                    cos_theta^6 +
                    (
                        6 * M^4 * a^8 * epsilon^2 * r^7 - 8 * M^4 * a^6 * epsilon^2 * r^9 +
                        30 * M^2 * a^8 * epsilon * r^10 +
                        18 * M^2 * a^6 * epsilon * r^12 - 112 * M * a^4 * r^16 +
                        28 * a^4 * r^17 +
                        56 * (2 * M^2 * a^4 + a^6) * r^15 -
                        4 * (28 * M * a^6 + 3 * M^2 * a^4 * epsilon) * r^14 +
                        4 * (7 * a^8 + 6 * M^3 * a^4 * epsilon) * r^13 -
                        (60 * M^3 * a^6 * epsilon - M^4 * a^4 * epsilon^2) * r^11
                    ) * cos_theta^4 +
                    2 *
                    (
                        2 * M^4 * a^6 * epsilon^2 * r^9 - M^4 * a^4 * epsilon^2 * r^11 +
                        6 * M^2 * a^6 * epsilon * r^12 - 12 * M^3 * a^4 * epsilon * r^13 +
                        5 * M^2 * a^4 * epsilon * r^14 - 16 * M * a^2 * r^18 +
                        4 * a^2 * r^19 +
                        8 * (2 * M^2 * a^2 + a^4) * r^17 -
                        (16 * M * a^4 + M^2 * a^2 * epsilon) * r^16 +
                        2 * (2 * a^6 + M^3 * a^2 * epsilon) * r^15
                    ) *
                    cos_theta^2
                ) *
                v_theta^2
            ) / (
                M^4 * a^2 * epsilon^2 * r^12 + 2 * M^2 * a^2 * epsilon * r^15 -
                2 * M^3 * epsilon * r^16 +
                M^2 * epsilon * r^17 +
                a^2 * r^18 - 2 * M * r^19 +
                r^20 +
                (a^20 - 2 * M * a^18 * r + a^18 * r^2) * cos_theta^18 -
                (
                    M^2 * a^16 * epsilon * r - 9 * a^18 * r^2 + 18 * M * a^16 * r^3 -
                    9 * a^16 * r^4
                ) * cos_theta^16 +
                2 *
                (
                    M^2 * a^16 * epsilon * r - M^3 * a^14 * epsilon * r^2 -
                    3 * M^2 * a^14 * epsilon * r^3 + 18 * a^16 * r^4 - 36 * M * a^14 * r^5 +
                    18 * a^14 * r^6
                ) *
                cos_theta^14 -
                (
                    M^4 * a^12 * epsilon^2 * r^2 - 14 * M^2 * a^14 * epsilon * r^3 +
                    14 * M^3 * a^12 * epsilon * r^4 +
                    14 * M^2 * a^12 * epsilon * r^5 - 84 * a^14 * r^6 +
                    168 * M * a^12 * r^7 - 84 * a^12 * r^8
                ) * cos_theta^12 +
                (
                    M^4 * a^12 * epsilon^2 * r^2 - 5 * M^4 * a^10 * epsilon^2 * r^4 +
                    42 * M^2 * a^12 * epsilon * r^5 - 42 * M^3 * a^10 * epsilon * r^6 -
                    14 * M^2 * a^10 * epsilon * r^7 + 126 * a^12 * r^8 -
                    252 * M * a^10 * r^9 + 126 * a^10 * r^10
                ) * cos_theta^10 +
                (
                    5 * M^4 * a^10 * epsilon^2 * r^4 - 10 * M^4 * a^8 * epsilon^2 * r^6 +
                    70 * M^2 * a^10 * epsilon * r^7 - 70 * M^3 * a^8 * epsilon * r^8 +
                    126 * a^10 * r^10 - 252 * M * a^8 * r^11 + 126 * a^8 * r^12
                ) * cos_theta^8 +
                2 *
                (
                    5 * M^4 * a^8 * epsilon^2 * r^6 - 5 * M^4 * a^6 * epsilon^2 * r^8 +
                    35 * M^2 * a^8 * epsilon * r^9 - 35 * M^3 * a^6 * epsilon * r^10 +
                    7 * M^2 * a^6 * epsilon * r^11 +
                    42 * a^8 * r^12 - 84 * M * a^6 * r^13 + 42 * a^6 * r^14
                ) *
                cos_theta^6 +
                (
                    10 * M^4 * a^6 * epsilon^2 * r^8 - 5 * M^4 * a^4 * epsilon^2 * r^10 +
                    42 * M^2 * a^6 * epsilon * r^11 - 42 * M^3 * a^4 * epsilon * r^12 +
                    14 * M^2 * a^4 * epsilon * r^13 +
                    36 * a^6 * r^14 - 72 * M * a^4 * r^15 + 36 * a^4 * r^16
                ) * cos_theta^4 +
                (
                    5 * M^4 * a^4 * epsilon^2 * r^10 - M^4 * a^2 * epsilon^2 * r^12 +
                    14 * M^2 * a^4 * epsilon * r^13 - 14 * M^3 * a^2 * epsilon * r^14 +
                    6 * M^2 * a^2 * epsilon * r^15 +
                    9 * a^4 * r^16 - 18 * M * a^2 * r^17 + 9 * a^2 * r^18
                ) * cos_theta^2
            )
        out3 =
            (
                (
                    (
                        a^22 - 6 * M * a^20 * r - 6 * M * a^16 * r^5 +
                        a^16 * r^6 +
                        3 * (4 * M^2 * a^16 + a^18) * r^4 -
                        4 * (2 * M^3 * a^16 + 3 * M * a^18) * r^3 +
                        3 * (4 * M^2 * a^18 + a^20) * r^2
                    ) * cos_theta^17 -
                    2 *
                    (
                        M^2 * a^18 * epsilon * r + 24 * M * a^14 * r^7 - 4 * a^14 * r^8 -
                        12 * (4 * M^2 * a^14 + a^16) * r^6 +
                        (32 * M^3 * a^14 + 48 * M * a^16 + M^2 * a^14 * epsilon) * r^5 -
                        4 * (12 * M^2 * a^16 + 3 * a^18 + M^3 * a^14 * epsilon) * r^4 +
                        2 *
                        (12 * M * a^18 + (2 * M^4 * a^14 + M^2 * a^16) * epsilon) *
                        r^3 - 4 * (a^20 + M^3 * a^16 * epsilon) * r^2
                    ) *
                    cos_theta^15 +
                    (
                        2 * M * a^20 * r - 166 * M * a^12 * r^9 +
                        28 * a^12 * r^10 +
                        4 * (82 * M^2 * a^12 + 21 * a^14) * r^8 -
                        2 *
                        (108 * M^3 * a^12 + 164 * M * a^14 + 7 * M^2 * a^12 * epsilon) *
                        r^7 +
                        2 *
                        (156 * M^2 * a^14 + 42 * a^16 + 29 * M^3 * a^12 * epsilon) *
                        r^6 +
                        4 *
                        (
                            4 * M^3 * a^14 - 39 * M * a^16 -
                            (16 * M^4 * a^12 + 7 * M^2 * a^14) * epsilon
                        ) *
                        r^5 -
                        (
                            24 * M^2 * a^16 - 28 * a^18 - M^4 * a^12 * epsilon^2 -
                            4 * (2 * M^5 * a^12 + 15 * M^3 * a^14) * epsilon
                        ) * r^4 +
                        2 *
                        (
                            4 * M^3 * a^16 + 4 * M * a^18 - M^5 * a^12 * epsilon^2 -
                            (4 * M^4 * a^14 + 7 * M^2 * a^16) * epsilon
                        ) *
                        r^3 -
                        (
                            8 * M^2 * a^18 - 2 * M^3 * a^16 * epsilon -
                            M^4 * a^14 * epsilon^2
                        ) * r^2
                    ) * cos_theta^13 +
                    2 *
                    (
                        M^2 * a^18 * epsilon * r - 162 * M * a^10 * r^11 +
                        28 * a^10 * r^12 +
                        12 * (26 * M^2 * a^10 + 7 * a^12) * r^10 -
                        4 *
                        (50 * M^3 * a^10 + 78 * M * a^12 + 5 * M^2 * a^10 * epsilon) *
                        r^9 +
                        4 *
                        (66 * M^2 * a^12 + 21 * a^14 + 20 * M^3 * a^10 * epsilon) *
                        r^8 +
                        2 *
                        (
                            24 * M^3 * a^12 - 66 * M * a^14 -
                            (42 * M^4 * a^10 + 19 * M^2 * a^12) * epsilon
                        ) *
                        r^7 -
                        2 *
                        (
                            36 * M^2 * a^14 - 14 * a^16 - 2 * M^4 * a^10 * epsilon^2 -
                            (4 * M^5 * a^10 + 33 * M^3 * a^12) * epsilon
                        ) *
                        r^6 +
                        (
                            24 * M^3 * a^14 + 24 * M * a^16 - 10 * M^5 * a^10 * epsilon^2 +
                            3 * (8 * M^4 * a^12 - 5 * M^2 * a^14) * epsilon
                        ) * r^5 -
                        (
                            24 * M^2 * a^16 -
                            (4 * M^6 * a^10 + 5 * M^4 * a^12) * epsilon^2 +
                            8 * (2 * M^5 * a^12 + 3 * M^3 * a^14) * epsilon
                        ) * r^4 +
                        2 *
                        (
                            3 * M * a^18 - 2 * M^5 * a^12 * epsilon^2 +
                            2 * (6 * M^4 * a^14 + M^2 * a^16) * epsilon
                        ) *
                        r^3 - (10 * M^3 * a^16 * epsilon - M^4 * a^14 * epsilon^2) * r^2
                    ) *
                    cos_theta^11 -
                    (
                        390 * M * a^8 * r^13 - 70 * a^8 * r^14 -
                        30 * (24 * M^2 * a^8 + 7 * a^10) * r^12 +
                        20 *
                        (22 * M^3 * a^8 + 36 * M * a^10 + 3 * M^2 * a^8 * epsilon) *
                        r^11 -
                        10 *
                        (48 * M^2 * a^10 + 21 * a^12 + 22 * M^3 * a^8 * epsilon) *
                        r^10 -
                        4 *
                        (
                            60 * M^3 * a^10 - 60 * M * a^12 -
                            (48 * M^4 * a^8 + 25 * M^2 * a^10) * epsilon
                        ) *
                        r^9 +
                        2 *
                        (
                            180 * M^2 * a^12 - 35 * a^14 - 9 * M^4 * a^8 * epsilon^2 +
                            8 * (M^5 * a^8 - 5 * M^3 * a^10) * epsilon
                        ) *
                        r^8 -
                        2 *
                        (
                            60 * M^3 * a^12 + 60 * M * a^14 - 17 * M^5 * a^8 * epsilon^2 +
                            (132 * M^4 * a^10 - 5 * M^2 * a^12) * epsilon
                        ) *
                        r^7 +
                        2 *
                        (
                            60 * M^2 * a^14 - 7 * M^4 * a^10 * epsilon^2 +
                            7 * (8 * M^5 * a^10 + 15 * M^3 * a^12) * epsilon
                        ) *
                        r^6 -
                        2 *
                        (
                            15 * M * a^16 + 16 * M^5 * a^10 * epsilon^2 -
                            M^6 * a^8 * epsilon^3 +
                            4 * (18 * M^4 * a^12 + 5 * M^2 * a^14) * epsilon
                        ) *
                        r^5 -
                        (
                            2 * M^7 * a^8 * epsilon^3 -
                            (40 * M^6 * a^10 + 11 * M^4 * a^12) * epsilon^2 +
                            12 * (2 * M^5 * a^12 - 5 * M^3 * a^14) * epsilon
                        ) * r^4 -
                        2 *
                        (
                            18 * M^5 * a^12 * epsilon^2 - M^6 * a^10 * epsilon^3 -
                            (16 * M^4 * a^14 - 5 * M^2 * a^16) * epsilon
                        ) *
                        r^3 -
                        (10 * M^3 * a^16 * epsilon - 7 * M^4 * a^14 * epsilon^2) * r^2
                    ) * cos_theta^9 +
                    2 *
                    (
                        2 * M^4 * a^14 * epsilon^2 * r^2 - 148 * M * a^6 * r^15 +
                        28 * a^6 * r^16 +
                        4 * (64 * M^2 * a^6 + 21 * a^8) * r^14 -
                        (144 * M^3 * a^6 + 256 * M * a^8 + 25 * M^2 * a^6 * epsilon) *
                        r^13 +
                        4 * (24 * M^2 * a^8 + 21 * a^10 + 20 * M^3 * a^6 * epsilon) * r^12 +
                        2 *
                        (
                            80 * M^3 * a^8 - 24 * M * a^10 -
                            (22 * M^4 * a^6 + 15 * M^2 * a^8) * epsilon
                        ) *
                        r^11 -
                        4 *
                        (
                            60 * M^2 * a^10 - 7 * a^12 - 2 * M^4 * a^6 * epsilon^2 +
                            2 * (4 * M^5 * a^6 + 5 * M^3 * a^8) * epsilon
                        ) *
                        r^10 +
                        (
                            80 * M^3 * a^10 + 80 * M * a^12 - 8 * M^5 * a^6 * epsilon^2 +
                            (208 * M^4 * a^8 + 25 * M^2 * a^10) * epsilon
                        ) * r^9 -
                        4 *
                        (
                            20 * M^2 * a^12 +
                            (3 * M^6 * a^6 + M^4 * a^8) * epsilon^2 +
                            8 * (2 * M^5 * a^8 + 5 * M^3 * a^10) * epsilon
                        ) *
                        r^8 +
                        (
                            20 * M * a^14 + 44 * M^5 * a^8 * epsilon^2 -
                            M^6 * a^6 * epsilon^3 +
                            8 * (6 * M^4 * a^10 + 5 * M^2 * a^12) * epsilon
                        ) * r^7 -
                        2 *
                        (
                            M^7 * a^6 * epsilon^3 +
                            2 * (6 * M^6 * a^8 + 5 * M^4 * a^10) * epsilon^2 -
                            2 * (12 * M^5 * a^10 - 5 * M^3 * a^12) * epsilon
                        ) *
                        r^6 +
                        2 *
                        (
                            6 * M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3 -
                            (32 * M^4 * a^12 - 5 * M^2 * a^14) * epsilon
                        ) *
                        r^5 +
                        2 *
                        (
                            10 * M^3 * a^14 * epsilon - 3 * M^7 * a^8 * epsilon^3 +
                            (14 * M^6 * a^10 - 3 * M^4 * a^12) * epsilon^2
                        ) *
                        r^4 -
                        (20 * M^5 * a^12 * epsilon^2 - 3 * M^6 * a^10 * epsilon^3) * r^3
                    ) *
                    cos_theta^7 -
                    (
                        64 * M^5 * a^10 * epsilon^2 * r^5 + 138 * M * a^4 * r^17 -
                        28 * a^4 * r^18 - 12 * (18 * M^2 * a^4 + 7 * a^6) * r^16 +
                        2 *
                        (52 * M^3 * a^4 + 108 * M * a^6 + 11 * M^2 * a^4 * epsilon) *
                        r^15 +
                        2 * (12 * M^2 * a^6 - 42 * a^8 - 29 * M^3 * a^4 * epsilon) * r^14 -
                        4 * (60 * M^3 * a^6 + 3 * M * a^8 - M^2 * a^6 * epsilon) * r^13 +
                        (
                            360 * M^2 * a^8 - 28 * a^10 - 5 * M^4 * a^4 * epsilon^2 +
                            4 * (14 * M^5 * a^4 + 33 * M^3 * a^6) * epsilon
                        ) * r^12 -
                        6 *
                        (
                            20 * M^3 * a^8 +
                            20 * M * a^10 +
                            (44 * M^4 * a^6 + 13 * M^2 * a^8) * epsilon
                        ) *
                        r^11 +
                        (
                            120 * M^2 * a^10 +
                            (16 * M^6 * a^4 + 23 * M^4 * a^6) * epsilon^2 +
                            2 * (16 * M^5 * a^6 + 105 * M^3 * a^8) * epsilon
                        ) * r^10 -
                        2 *
                        (
                            15 * M * a^12 + 24 * M^5 * a^6 * epsilon^2 -
                            8 * (6 * M^4 * a^8 - 5 * M^2 * a^10) * epsilon
                        ) *
                        r^9 -
                        2 *
                        (
                            (12 * M^6 * a^6 - 17 * M^4 * a^8) * epsilon^2 +
                            4 * (18 * M^5 * a^8 + 5 * M^3 * a^10) * epsilon
                        ) *
                        r^8 +
                        2 *
                        (
                            30 * M^5 * a^8 * epsilon^2 - 3 * M^6 * a^6 * epsilon^3 +
                            2 * (48 * M^4 * a^10 - 5 * M^2 * a^12) * epsilon
                        ) *
                        r^7 -
                        6 *
                        (
                            10 * M^3 * a^12 * epsilon +
                            2 * M^7 * a^6 * epsilon^3 +
                            (16 * M^6 * a^8 + M^4 * a^10) * epsilon^2
                        ) *
                        r^6 -
                        12 *
                        (
                            2 * M^7 * a^8 * epsilon^3 -
                            (2 * M^6 * a^10 - M^4 * a^12) * epsilon^2
                        ) *
                        r^4 -
                        2 * (7 * M^5 * a^12 * epsilon^2 - 3 * M^6 * a^10 * epsilon^3) * r^3
                    ) * cos_theta^5 +
                    2 *
                    (
                        M^6 * a^10 * epsilon^3 * r^3 - 10 * M^7 * a^8 * epsilon^3 * r^4 -
                        18 * M * a^2 * r^19 +
                        4 * a^2 * r^20 +
                        12 * (2 * M^2 * a^2 + a^4) * r^18 -
                        2 * (4 * M^3 * a^2 + 12 * M * a^4 + M^2 * a^2 * epsilon) * r^17 -
                        4 * (6 * M^2 * a^4 - 3 * a^6 - M^3 * a^2 * epsilon) * r^16 +
                        2 *
                        (
                            24 * M^3 * a^4 +
                            6 * M * a^6 +
                            (2 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon
                        ) *
                        r^15 -
                        2 *
                        (
                            36 * M^2 * a^6 - 2 * a^8 +
                            (4 * M^5 * a^2 + 15 * M^3 * a^4) * epsilon
                        ) *
                        r^14 +
                        (
                            24 * M^3 * a^6 +
                            24 * M * a^8 +
                            (24 * M^4 * a^4 + 23 * M^2 * a^6) * epsilon
                        ) * r^13 -
                        (
                            24 * M^2 * a^8 + 5 * M^4 * a^4 * epsilon^2 -
                            8 * (2 * M^5 * a^4 - 3 * M^3 * a^6) * epsilon
                        ) * r^12 +
                        2 *
                        (3 * M * a^10 - 2 * (18 * M^4 * a^6 - 5 * M^2 * a^8) * epsilon) *
                        r^11 +
                        (
                            (16 * M^6 * a^4 - M^4 * a^6) * epsilon^2 +
                            6 * (8 * M^5 * a^6 + 5 * M^3 * a^8) * epsilon
                        ) * r^10 -
                        (
                            24 * M^5 * a^6 * epsilon^2 +
                            (64 * M^4 * a^8 - 5 * M^2 * a^10) * epsilon
                        ) * r^9 +
                        2 *
                        (
                            10 * M^3 * a^10 * epsilon +
                            (6 * M^6 * a^6 + 5 * M^4 * a^8) * epsilon^2
                        ) *
                        r^8 -
                        (4 * M^5 * a^8 * epsilon^2 + 3 * M^6 * a^6 * epsilon^3) * r^7 -
                        6 *
                        (M^7 * a^6 * epsilon^3 + (4 * M^6 * a^8 - M^4 * a^10) * epsilon^2) *
                        r^6 +
                        2 * (7 * M^5 * a^10 * epsilon^2 - M^6 * a^8 * epsilon^3) * r^5
                    ) *
                    cos_theta^3 +
                    (
                        6 * M^7 * a^8 * epsilon^3 * r^4 +
                        2 * M^6 * a^8 * epsilon^3 * r^5 +
                        4 * M^7 * a^6 * epsilon^3 * r^6 +
                        16 * M^5 * a^6 * epsilon^2 * r^9 - 4 * M * a^2 * r^19 -
                        4 * M * r^21 +
                        r^22 +
                        (4 * M^2 + 3 * a^2) * r^20 - 3 * (4 * M^2 * a^2 - a^4) * r^18 +
                        2 * (8 * M^3 * a^2 + 3 * M * a^4 + 2 * M^2 * a^2 * epsilon) * r^17 -
                        (24 * M^2 * a^4 - a^6 + 8 * M^3 * a^2 * epsilon) * r^16 +
                        2 *
                        (
                            4 * M^3 * a^4 + 4 * M * a^6 -
                            (4 * M^4 * a^2 - 5 * M^2 * a^4) * epsilon
                        ) *
                        r^15 -
                        2 * (4 * M^2 * a^6 - (8 * M^5 * a^2 + M^3 * a^4) * epsilon) * r^14 +
                        2 * (M * a^8 - 4 * (6 * M^4 * a^4 - M^2 * a^6) * epsilon) * r^13 -
                        2 * (16 * M^4 * a^6 - M^2 * a^8) * epsilon * r^11 +
                        (
                            5 * M^4 * a^4 * epsilon^2 +
                            4 * (6 * M^5 * a^4 + 5 * M^3 * a^6) * epsilon
                        ) * r^12 - 4 * (6 * M^6 * a^6 - M^4 * a^8) * epsilon^2 * r^8 +
                        (
                            10 * M^3 * a^8 * epsilon -
                            (16 * M^6 * a^4 - 9 * M^4 * a^6) * epsilon^2
                        ) * r^10 +
                        2 * (7 * M^5 * a^8 * epsilon^2 + M^6 * a^6 * epsilon^3) * r^7
                    ) * cos_theta
                ) *
                v_phi^2 *
                sin_theta -
                (
                    (a^20 - 2 * M * a^18 * r + a^18 * r^2) * cos_theta^17 -
                    2 *
                    (
                        M^2 * a^16 * epsilon * r - 4 * a^18 * r^2 + 8 * M * a^16 * r^3 -
                        4 * a^16 * r^4
                    ) *
                    cos_theta^15 +
                    2 *
                    (
                        M^2 * a^16 * epsilon * r + M^3 * a^14 * epsilon * r^2 -
                        6 * M^2 * a^14 * epsilon * r^3 + 14 * a^16 * r^4 -
                        28 * M * a^14 * r^5 + 14 * a^14 * r^6
                    ) *
                    cos_theta^13 +
                    2 *
                    (
                        6 * M^2 * a^14 * epsilon * r^3 + 6 * M^3 * a^12 * epsilon * r^4 -
                        15 * M^2 * a^12 * epsilon * r^5 + 28 * a^14 * r^6 -
                        56 * M * a^12 * r^7 + 28 * a^12 * r^8
                    ) *
                    cos_theta^11 +
                    (
                        M^4 * a^12 * epsilon^2 * r^2 +
                        M^4 * a^10 * epsilon^2 * r^4 +
                        30 * M^2 * a^12 * epsilon * r^5 +
                        30 * M^3 * a^10 * epsilon * r^6 - 40 * M^2 * a^10 * epsilon * r^7 +
                        70 * a^12 * r^8 - 140 * M * a^10 * r^9 + 70 * a^10 * r^10
                    ) * cos_theta^9 +
                    2 *
                    (
                        2 * M^4 * a^10 * epsilon^2 * r^4 +
                        2 * M^4 * a^8 * epsilon^2 * r^6 +
                        20 * M^2 * a^10 * epsilon * r^7 +
                        20 * M^3 * a^8 * epsilon * r^8 - 15 * M^2 * a^8 * epsilon * r^9 +
                        28 * a^10 * r^10 - 56 * M * a^8 * r^11 + 28 * a^8 * r^12
                    ) *
                    cos_theta^7 +
                    2 *
                    (
                        3 * M^4 * a^8 * epsilon^2 * r^6 +
                        3 * M^4 * a^6 * epsilon^2 * r^8 +
                        15 * M^2 * a^8 * epsilon * r^9 +
                        15 * M^3 * a^6 * epsilon * r^10 - 6 * M^2 * a^6 * epsilon * r^11 +
                        14 * a^8 * r^12 - 28 * M * a^6 * r^13 + 14 * a^6 * r^14
                    ) *
                    cos_theta^5 +
                    2 *
                    (
                        2 * M^4 * a^6 * epsilon^2 * r^8 +
                        2 * M^4 * a^4 * epsilon^2 * r^10 +
                        6 * M^2 * a^6 * epsilon * r^11 +
                        6 * M^3 * a^4 * epsilon * r^12 - M^2 * a^4 * epsilon * r^13 +
                        4 * a^6 * r^14 - 8 * M * a^4 * r^15 + 4 * a^4 * r^16
                    ) *
                    cos_theta^3 +
                    (
                        M^4 * a^4 * epsilon^2 * r^10 +
                        M^4 * a^2 * epsilon^2 * r^12 +
                        2 * M^2 * a^4 * epsilon * r^13 +
                        2 * M^3 * a^2 * epsilon * r^14 +
                        a^4 * r^16 - 2 * M * a^2 * r^17 + a^2 * r^18
                    ) * cos_theta
                ) *
                v_r^2 *
                sin_theta -
                4 *
                (
                    (
                        M * a^19 * r - 4 * M^2 * a^17 * r^2 - 8 * M^2 * a^15 * r^4 -
                        4 * M^2 * a^13 * r^6 +
                        M * a^13 * r^7 +
                        (4 * M^3 * a^13 + 3 * M * a^15) * r^5 +
                        (4 * M^3 * a^15 + 3 * M * a^17) * r^3
                    ) * cos_theta^13 -
                    2 *
                    (
                        2 * M^3 * a^15 * epsilon * r^2 + 12 * M^2 * a^11 * r^8 -
                        3 * M * a^11 * r^9 - 3 * (4 * M^3 * a^11 + 3 * M * a^13) * r^7 +
                        2 * (12 * M^2 * a^13 + M^3 * a^11 * epsilon) * r^6 -
                        3 *
                        (4 * M^3 * a^13 + 3 * M * a^15 + 2 * M^4 * a^11 * epsilon) *
                        r^5 +
                        4 * (3 * M^2 * a^15 + (M^5 * a^11 + M^3 * a^13) * epsilon) * r^4 -
                        3 * (M * a^17 + 2 * M^4 * a^13 * epsilon) * r^3
                    ) *
                    cos_theta^11 +
                    (
                        5 * M^3 * a^15 * epsilon * r^2 - 60 * M^2 * a^9 * r^10 +
                        15 * M * a^9 * r^11 +
                        15 * (4 * M^3 * a^9 + 3 * M * a^11) * r^9 -
                        15 * (8 * M^2 * a^11 + M^3 * a^9 * epsilon) * r^8 +
                        (60 * M^3 * a^11 + 45 * M * a^13 + 44 * M^4 * a^9 * epsilon) * r^7 -
                        (60 * M^2 * a^13 + (28 * M^5 * a^9 + 25 * M^3 * a^11) * epsilon) *
                        r^6 +
                        (
                            15 * M * a^15 +
                            28 * M^4 * a^11 * epsilon +
                            5 * M^5 * a^9 * epsilon^2
                        ) * r^5 -
                        (
                            8 * M^6 * a^9 * epsilon^2 -
                            (12 * M^5 * a^11 - 5 * M^3 * a^13) * epsilon
                        ) * r^4 -
                        (16 * M^4 * a^13 * epsilon - 5 * M^5 * a^11 * epsilon^2) * r^3
                    ) * cos_theta^9 -
                    2 *
                    (
                        6 * M^5 * a^11 * epsilon^2 * r^3 + 40 * M^2 * a^7 * r^12 -
                        10 * M * a^7 * r^13 - 10 * (4 * M^3 * a^7 + 3 * M * a^9) * r^11 +
                        10 * (8 * M^2 * a^9 + M^3 * a^7 * epsilon) * r^10 -
                        2 *
                        (20 * M^3 * a^9 + 15 * M * a^11 + 14 * M^4 * a^7 * epsilon) *
                        r^9 +
                        2 *
                        (20 * M^2 * a^11 + (8 * M^5 * a^7 + 5 * M^3 * a^9) * epsilon) *
                        r^8 -
                        2 *
                        (
                            5 * M * a^13 - 2 * M^4 * a^9 * epsilon +
                            2 * M^5 * a^7 * epsilon^2
                        ) *
                        r^7 +
                        2 *
                        (
                            3 * M^6 * a^7 * epsilon^2 -
                            (12 * M^5 * a^9 + 5 * M^3 * a^11) * epsilon
                        ) *
                        r^6 +
                        2 * (16 * M^4 * a^11 * epsilon + M^5 * a^9 * epsilon^2) * r^5 -
                        (
                            10 * M^3 * a^13 * epsilon + 10 * M^6 * a^9 * epsilon^2 -
                            M^7 * a^7 * epsilon^3
                        ) * r^4
                    ) *
                    cos_theta^7 +
                    (
                        7 * M^5 * a^11 * epsilon^2 * r^3 -
                        15 * M^5 * a^9 * epsilon^2 * r^5 - 60 * M^2 * a^5 * r^14 +
                        15 * M * a^5 * r^15 +
                        15 * (4 * M^3 * a^5 + 3 * M * a^7) * r^13 -
                        10 * (12 * M^2 * a^7 + M^3 * a^5 * epsilon) * r^12 +
                        3 *
                        (20 * M^3 * a^7 + 15 * M * a^9 + 8 * M^4 * a^5 * epsilon) *
                        r^11 -
                        2 *
                        (30 * M^2 * a^9 + (4 * M^5 * a^5 - 5 * M^3 * a^7) * epsilon) *
                        r^10 +
                        2 * (36 * M^5 * a^7 + 25 * M^3 * a^9) * epsilon * r^8 +
                        (15 * M * a^11 - 72 * M^4 * a^7 * epsilon + M^5 * a^5 * epsilon^2) *
                        r^9 -
                        3 * (32 * M^4 * a^9 * epsilon + 7 * M^5 * a^7 * epsilon^2) * r^7 +
                        (
                            30 * M^3 * a^11 * epsilon +
                            36 * M^6 * a^7 * epsilon^2 +
                            M^7 * a^5 * epsilon^3
                        ) * r^6 -
                        (12 * M^6 * a^9 * epsilon^2 - 7 * M^7 * a^7 * epsilon^3) * r^4
                    ) * cos_theta^5 -
                    2 *
                    (
                        4 * M^7 * a^7 * epsilon^3 * r^4 - 7 * M^5 * a^9 * epsilon^2 * r^5 -
                        3 * M^5 * a^7 * epsilon^2 * r^7 +
                        24 * M^2 * a^5 * r^14 +
                        12 * M^2 * a^3 * r^16 - 3 * M * a^3 * r^17 -
                        3 * (4 * M^3 * a^3 + 3 * M * a^5) * r^15 -
                        (12 * M^3 * a^5 + 9 * M * a^7 - 2 * M^4 * a^3 * epsilon) * r^13 +
                        2 *
                        (6 * M^2 * a^7 - (2 * M^5 * a^3 + 5 * M^3 * a^5) * epsilon) *
                        r^12 -
                        (3 * M * a^9 - 34 * M^4 * a^5 * epsilon - M^5 * a^3 * epsilon^2) *
                        r^11 -
                        2 *
                        (
                            M^6 * a^3 * epsilon^2 +
                            2 * (6 * M^5 * a^5 + 5 * M^3 * a^7) * epsilon
                        ) *
                        r^10 +
                        (32 * M^4 * a^7 * epsilon + 5 * M^5 * a^5 * epsilon^2) * r^9 -
                        2 * (5 * M^3 * a^9 * epsilon + 3 * M^6 * a^5 * epsilon^2) * r^8 +
                        (12 * M^6 * a^7 * epsilon^2 + M^7 * a^5 * epsilon^3) * r^6
                    ) *
                    cos_theta^3 +
                    (
                        3 * M^7 * a^7 * epsilon^3 * r^4 +
                        M^7 * a^5 * epsilon^3 * r^6 +
                        7 * M^5 * a^7 * epsilon^2 * r^7 - 12 * M^6 * a^5 * epsilon^2 * r^8 +
                        9 * M^5 * a^5 * epsilon^2 * r^9 - 4 * M^2 * a * r^18 +
                        M * a * r^19 +
                        (4 * M^3 * a + 3 * M * a^3) * r^17 -
                        (8 * M^2 * a^3 - M^3 * a * epsilon) * r^16 +
                        (4 * M^3 * a^3 + 3 * M * a^5 - 4 * M^4 * a * epsilon) * r^15 -
                        (4 * M^2 * a^5 - (4 * M^5 * a + 7 * M^3 * a^3) * epsilon) * r^14 +
                        (12 * M^5 * a^3 + 11 * M^3 * a^5) * epsilon * r^12 +
                        (M * a^7 - 20 * M^4 * a^3 * epsilon) * r^13 -
                        2 * (8 * M^4 * a^5 * epsilon - M^5 * a^3 * epsilon^2) * r^11 +
                        (5 * M^3 * a^7 * epsilon - 4 * M^6 * a^3 * epsilon^2) * r^10
                    ) * cos_theta
                ) *
                v_phi *
                v_t *
                sin_theta +
                2 *
                (
                    (
                        M * a^18 * r - 4 * M^2 * a^16 * r^2 - 4 * M^2 * a^14 * r^4 +
                        M * a^14 * r^5 +
                        2 * (2 * M^3 * a^14 + M * a^16) * r^3
                    ) * cos_theta^13 -
                    (
                        M^2 * a^16 * epsilon * r - 2 * M^3 * a^14 * epsilon * r^2 +
                        24 * M^2 * a^12 * r^6 - 6 * M * a^12 * r^7 -
                        (24 * M^3 * a^12 + 12 * M * a^14 - M^2 * a^12 * epsilon) * r^5 +
                        2 * (12 * M^2 * a^14 - M^3 * a^12 * epsilon) * r^4 -
                        2 * (3 * M * a^16 - M^2 * a^14 * epsilon) * r^3
                    ) * cos_theta^11 -
                    (
                        60 * M^2 * a^10 * r^8 - 15 * M * a^10 * r^9 -
                        5 * (12 * M^3 * a^10 + 6 * M * a^12 - M^2 * a^10 * epsilon) * r^7 +
                        15 * (4 * M^2 * a^12 - M^3 * a^10 * epsilon) * r^6 -
                        (15 * M * a^14 - 2 * (8 * M^4 * a^10 + 5 * M^2 * a^12) * epsilon) *
                        r^5 -
                        2 *
                        (
                            M^4 * a^10 * epsilon^2 +
                            2 * (3 * M^5 * a^10 + 5 * M^3 * a^12) * epsilon
                        ) *
                        r^4 +
                        (
                            3 * M^5 * a^10 * epsilon^2 +
                            (16 * M^4 * a^12 + 5 * M^2 * a^14) * epsilon
                        ) * r^3 -
                        (5 * M^3 * a^14 * epsilon + 2 * M^4 * a^12 * epsilon^2) * r^2
                    ) * cos_theta^9 -
                    (
                        2 * M^4 * a^12 * epsilon^2 * r^2 + 80 * M^2 * a^8 * r^10 -
                        20 * M * a^8 * r^11 -
                        10 * (8 * M^3 * a^8 + 4 * M * a^10 - M^2 * a^8 * epsilon) * r^9 +
                        40 * (2 * M^2 * a^10 - M^3 * a^8 * epsilon) * r^8 -
                        4 *
                        (5 * M * a^12 - (16 * M^4 * a^8 + 5 * M^2 * a^10) * epsilon) *
                        r^7 -
                        6 *
                        (
                            M^4 * a^8 * epsilon^2 +
                            2 * (4 * M^5 * a^8 + 5 * M^3 * a^10) * epsilon
                        ) *
                        r^6 +
                        2 *
                        (
                            8 * M^5 * a^8 * epsilon^2 +
                            (32 * M^4 * a^10 + 5 * M^2 * a^12) * epsilon
                        ) *
                        r^5 -
                        4 *
                        (
                            5 * M^3 * a^12 * epsilon +
                            (3 * M^6 * a^8 + M^4 * a^10) * epsilon^2
                        ) *
                        r^4 + (4 * M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3) * r^3
                    ) * cos_theta^7 -
                    (
                        60 * M^2 * a^6 * r^12 - 15 * M * a^6 * r^13 -
                        10 * (6 * M^3 * a^6 + 3 * M * a^8 - M^2 * a^6 * epsilon) * r^11 +
                        10 * (6 * M^2 * a^8 - 5 * M^3 * a^6 * epsilon) * r^10 -
                        (15 * M * a^10 - 4 * (24 * M^4 * a^6 + 5 * M^2 * a^8) * epsilon) *
                        r^9 -
                        2 *
                        (
                            3 * M^4 * a^6 * epsilon^2 +
                            4 * (9 * M^5 * a^6 + 10 * M^3 * a^8) * epsilon
                        ) *
                        r^8 +
                        (
                            23 * M^5 * a^6 * epsilon^2 +
                            2 * (48 * M^4 * a^8 + 5 * M^2 * a^10) * epsilon
                        ) * r^7 -
                        6 * (5 * M^3 * a^10 * epsilon + 4 * M^6 * a^6 * epsilon^2) * r^6 -
                        (2 * M^5 * a^8 * epsilon^2 - M^6 * a^6 * epsilon^3) * r^5 -
                        3 *
                        (
                            M^7 * a^6 * epsilon^3 -
                            2 * (2 * M^6 * a^8 + M^4 * a^10) * epsilon^2
                        ) *
                        r^4 -
                        (7 * M^5 * a^10 * epsilon^2 + 2 * M^6 * a^8 * epsilon^3) * r^3
                    ) * cos_theta^5 -
                    (
                        M^6 * a^8 * epsilon^3 * r^3 + 6 * M^7 * a^6 * epsilon^3 * r^4 -
                        16 * M^5 * a^6 * epsilon^2 * r^7 + 24 * M^2 * a^4 * r^14 -
                        6 * M * a^4 * r^15 -
                        (24 * M^3 * a^4 + 12 * M * a^6 - 5 * M^2 * a^4 * epsilon) * r^13 +
                        6 * (4 * M^2 * a^6 - 5 * M^3 * a^4 * epsilon) * r^12 -
                        2 *
                        (3 * M * a^8 - (32 * M^4 * a^4 + 5 * M^2 * a^6) * epsilon) *
                        r^11 -
                        2 *
                        (
                            M^4 * a^4 * epsilon^2 +
                            (24 * M^5 * a^4 + 25 * M^3 * a^6) * epsilon
                        ) *
                        r^10 +
                        (
                            10 * M^5 * a^4 * epsilon^2 +
                            (64 * M^4 * a^6 + 5 * M^2 * a^8) * epsilon
                        ) * r^9 +
                        6 * (4 * M^6 * a^6 + M^4 * a^8) * epsilon^2 * r^6 -
                        4 *
                        (
                            5 * M^3 * a^8 * epsilon +
                            (3 * M^6 * a^4 - M^4 * a^6) * epsilon^2
                        ) *
                        r^8 - 2 * (7 * M^5 * a^8 * epsilon^2 + M^6 * a^6 * epsilon^3) * r^5
                    ) * cos_theta^3 +
                    (
                        3 * M^7 * a^6 * epsilon^3 * r^4 - M^6 * a^6 * epsilon^3 * r^5 +
                        7 * M^5 * a^6 * epsilon^2 * r^7 +
                        10 * M^5 * a^4 * epsilon^2 * r^9 - 4 * M^2 * a^2 * r^16 +
                        M * a^2 * r^17 +
                        (4 * M^3 * a^2 + 2 * M * a^4 - M^2 * a^2 * epsilon) * r^15 -
                        (4 * M^2 * a^4 - 7 * M^3 * a^2 * epsilon) * r^14 +
                        12 * (M^5 * a^2 + M^3 * a^4) * epsilon * r^12 +
                        (M * a^6 - 2 * (8 * M^4 * a^2 + M^2 * a^4) * epsilon) * r^13 -
                        (16 * M^4 * a^4 + M^2 * a^6) * epsilon * r^11 -
                        2 * (6 * M^6 * a^4 + M^4 * a^6) * epsilon^2 * r^8 +
                        (5 * M^3 * a^6 * epsilon - 2 * M^4 * a^4 * epsilon^2) * r^10
                    ) * cos_theta
                ) *
                v_t^2 *
                sin_theta +
                (
                    (
                        a^22 - 4 * M * a^20 * r - 4 * M * a^18 * r^3 +
                        a^18 * r^4 +
                        2 * (2 * M^2 * a^18 + a^20) * r^2
                    ) * cos_theta^17 -
                    2 *
                    (
                        M^2 * a^18 * epsilon * r + 16 * M * a^16 * r^5 - 4 * a^16 * r^6 -
                        8 * (2 * M^2 * a^16 + a^18) * r^4 +
                        (16 * M * a^18 + M^2 * a^16 * epsilon) * r^3 -
                        2 * (2 * a^20 + M^3 * a^16 * epsilon) * r^2
                    ) *
                    cos_theta^15 +
                    (
                        2 * M^2 * a^18 * epsilon * r - 10 * M^2 * a^16 * epsilon * r^3 -
                        112 * M * a^14 * r^7 +
                        28 * a^14 * r^8 +
                        56 * (2 * M^2 * a^14 + a^16) * r^6 -
                        4 * (28 * M * a^16 + 3 * M^2 * a^14 * epsilon) * r^5 +
                        4 * (7 * a^18 + 6 * M^3 * a^14 * epsilon) * r^4 -
                        (4 * M^3 * a^16 * epsilon - M^4 * a^14 * epsilon^2) * r^2
                    ) * cos_theta^13 -
                    2 *
                    (
                        M^4 * a^14 * epsilon^2 * r^2 - 6 * M^2 * a^16 * epsilon * r^3 +
                        9 * M^2 * a^14 * epsilon * r^5 +
                        112 * M * a^12 * r^9 - 28 * a^12 * r^10 -
                        56 * (2 * M^2 * a^12 + a^14) * r^8 +
                        (112 * M * a^14 + 15 * M^2 * a^12 * epsilon) * r^7 -
                        2 * (14 * a^16 + 15 * M^3 * a^12 * epsilon) * r^6 +
                        2 * (6 * M^3 * a^14 * epsilon - M^4 * a^12 * epsilon^2) * r^4
                    ) *
                    cos_theta^11 +
                    (
                        M^4 * a^14 * epsilon^2 * r^2 - 8 * M^4 * a^12 * epsilon^2 * r^4 +
                        30 * M^2 * a^14 * epsilon * r^5 - 10 * M^2 * a^12 * epsilon * r^7 -
                        280 * M * a^10 * r^11 +
                        70 * a^10 * r^12 +
                        140 * (2 * M^2 * a^10 + a^12) * r^10 -
                        40 * (7 * M * a^12 + M^2 * a^10 * epsilon) * r^9 +
                        10 * (7 * a^14 + 8 * M^3 * a^10 * epsilon) * r^8 -
                        6 * (10 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * r^6
                    ) * cos_theta^9 +
                    2 *
                    (
                        2 * M^4 * a^12 * epsilon^2 * r^4 -
                        6 * M^4 * a^10 * epsilon^2 * r^6 +
                        20 * M^2 * a^12 * epsilon * r^7 +
                        5 * M^2 * a^10 * epsilon * r^9 - 112 * M * a^8 * r^13 +
                        28 * a^8 * r^14 +
                        56 * (2 * M^2 * a^8 + a^10) * r^12 -
                        (112 * M * a^10 + 15 * M^2 * a^8 * epsilon) * r^11 +
                        2 * (14 * a^12 + 15 * M^3 * a^8 * epsilon) * r^10 -
                        2 * (20 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * r^8
                    ) *
                    cos_theta^7 +
                    (
                        6 * M^4 * a^10 * epsilon^2 * r^6 - 8 * M^4 * a^8 * epsilon^2 * r^8 +
                        30 * M^2 * a^10 * epsilon * r^9 +
                        18 * M^2 * a^8 * epsilon * r^11 - 112 * M * a^6 * r^15 +
                        28 * a^6 * r^16 +
                        56 * (2 * M^2 * a^6 + a^8) * r^14 -
                        4 * (28 * M * a^8 + 3 * M^2 * a^6 * epsilon) * r^13 +
                        4 * (7 * a^10 + 6 * M^3 * a^6 * epsilon) * r^12 -
                        (60 * M^3 * a^8 * epsilon - M^4 * a^6 * epsilon^2) * r^10
                    ) * cos_theta^5 +
                    2 *
                    (
                        2 * M^4 * a^8 * epsilon^2 * r^8 - M^4 * a^6 * epsilon^2 * r^10 +
                        6 * M^2 * a^8 * epsilon * r^11 - 12 * M^3 * a^6 * epsilon * r^12 +
                        5 * M^2 * a^6 * epsilon * r^13 - 16 * M * a^4 * r^17 +
                        4 * a^4 * r^18 +
                        8 * (2 * M^2 * a^4 + a^6) * r^16 -
                        (16 * M * a^6 + M^2 * a^4 * epsilon) * r^15 +
                        2 * (2 * a^8 + M^3 * a^4 * epsilon) * r^14
                    ) *
                    cos_theta^3 +
                    (
                        M^4 * a^6 * epsilon^2 * r^10 + 2 * M^2 * a^6 * epsilon * r^13 -
                        4 * M^3 * a^4 * epsilon * r^14 +
                        2 * M^2 * a^4 * epsilon * r^15 +
                        a^6 * r^16 - 4 * M * a^4 * r^17 - 4 * M * a^2 * r^19 +
                        a^2 * r^20 +
                        2 * (2 * M^2 * a^2 + a^4) * r^18
                    ) * cos_theta
                ) *
                v_theta^2 *
                sin_theta -
                2 *
                (
                    M^4 * a^4 * epsilon^2 * r^11 + 2 * M^2 * a^4 * epsilon * r^14 -
                    4 * M^3 * a^2 * epsilon * r^15 +
                    2 * M^2 * a^2 * epsilon * r^16 +
                    a^4 * r^17 - 4 * M * a^2 * r^18 - 4 * M * r^20 +
                    r^21 +
                    2 * (2 * M^2 + a^2) * r^19 +
                    (
                        a^20 * r - 4 * M * a^18 * r^2 - 4 * M * a^16 * r^4 +
                        a^16 * r^5 +
                        2 * (2 * M^2 * a^16 + a^18) * r^3
                    ) * cos_theta^16 -
                    2 *
                    (
                        M^2 * a^16 * epsilon * r^2 + 16 * M * a^14 * r^6 - 4 * a^14 * r^7 -
                        8 * (2 * M^2 * a^14 + a^16) * r^5 +
                        (16 * M * a^16 + M^2 * a^14 * epsilon) * r^4 -
                        2 * (2 * a^18 + M^3 * a^14 * epsilon) * r^3
                    ) *
                    cos_theta^14 +
                    (
                        2 * M^2 * a^16 * epsilon * r^2 - 10 * M^2 * a^14 * epsilon * r^4 -
                        112 * M * a^12 * r^8 +
                        28 * a^12 * r^9 +
                        56 * (2 * M^2 * a^12 + a^14) * r^7 -
                        4 * (28 * M * a^14 + 3 * M^2 * a^12 * epsilon) * r^6 +
                        4 * (7 * a^16 + 6 * M^3 * a^12 * epsilon) * r^5 -
                        (4 * M^3 * a^14 * epsilon - M^4 * a^12 * epsilon^2) * r^3
                    ) * cos_theta^12 -
                    2 *
                    (
                        M^4 * a^12 * epsilon^2 * r^3 - 6 * M^2 * a^14 * epsilon * r^4 +
                        9 * M^2 * a^12 * epsilon * r^6 +
                        112 * M * a^10 * r^10 - 28 * a^10 * r^11 -
                        56 * (2 * M^2 * a^10 + a^12) * r^9 +
                        (112 * M * a^12 + 15 * M^2 * a^10 * epsilon) * r^8 -
                        2 * (14 * a^14 + 15 * M^3 * a^10 * epsilon) * r^7 +
                        2 * (6 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * r^5
                    ) *
                    cos_theta^10 +
                    (
                        M^4 * a^12 * epsilon^2 * r^3 - 8 * M^4 * a^10 * epsilon^2 * r^5 +
                        30 * M^2 * a^12 * epsilon * r^6 - 10 * M^2 * a^10 * epsilon * r^8 -
                        280 * M * a^8 * r^12 +
                        70 * a^8 * r^13 +
                        140 * (2 * M^2 * a^8 + a^10) * r^11 -
                        40 * (7 * M * a^10 + M^2 * a^8 * epsilon) * r^10 +
                        10 * (7 * a^12 + 8 * M^3 * a^8 * epsilon) * r^9 -
                        6 * (10 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * r^7
                    ) * cos_theta^8 +
                    2 *
                    (
                        2 * M^4 * a^10 * epsilon^2 * r^5 - 6 * M^4 * a^8 * epsilon^2 * r^7 +
                        20 * M^2 * a^10 * epsilon * r^8 +
                        5 * M^2 * a^8 * epsilon * r^10 - 112 * M * a^6 * r^14 +
                        28 * a^6 * r^15 +
                        56 * (2 * M^2 * a^6 + a^8) * r^13 -
                        (112 * M * a^8 + 15 * M^2 * a^6 * epsilon) * r^12 +
                        2 * (14 * a^10 + 15 * M^3 * a^6 * epsilon) * r^11 -
                        2 * (20 * M^3 * a^8 * epsilon - M^4 * a^6 * epsilon^2) * r^9
                    ) *
                    cos_theta^6 +
                    (
                        6 * M^4 * a^8 * epsilon^2 * r^7 - 8 * M^4 * a^6 * epsilon^2 * r^9 +
                        30 * M^2 * a^8 * epsilon * r^10 +
                        18 * M^2 * a^6 * epsilon * r^12 - 112 * M * a^4 * r^16 +
                        28 * a^4 * r^17 +
                        56 * (2 * M^2 * a^4 + a^6) * r^15 -
                        4 * (28 * M * a^6 + 3 * M^2 * a^4 * epsilon) * r^14 +
                        4 * (7 * a^8 + 6 * M^3 * a^4 * epsilon) * r^13 -
                        (60 * M^3 * a^6 * epsilon - M^4 * a^4 * epsilon^2) * r^11
                    ) * cos_theta^4 +
                    2 *
                    (
                        2 * M^4 * a^6 * epsilon^2 * r^9 - M^4 * a^4 * epsilon^2 * r^11 +
                        6 * M^2 * a^6 * epsilon * r^12 - 12 * M^3 * a^4 * epsilon * r^13 +
                        5 * M^2 * a^4 * epsilon * r^14 - 16 * M * a^2 * r^18 +
                        4 * a^2 * r^19 +
                        8 * (2 * M^2 * a^2 + a^4) * r^17 -
                        (16 * M * a^4 + M^2 * a^2 * epsilon) * r^16 +
                        2 * (2 * a^6 + M^3 * a^2 * epsilon) * r^15
                    ) *
                    cos_theta^2
                ) *
                v_r *
                v_theta
            ) / (
                a^4 * r^18 - 4 * M * a^2 * r^19 - 4 * M * r^21 +
                r^22 +
                2 * (2 * M^2 + a^2) * r^20 +
                (
                    a^22 - 4 * M * a^20 * r - 4 * M * a^18 * r^3 +
                    a^18 * r^4 +
                    2 * (2 * M^2 * a^18 + a^20) * r^2
                ) * cos_theta^18 +
                9 *
                (
                    a^20 * r^2 - 4 * M * a^18 * r^3 - 4 * M * a^16 * r^5 +
                    a^16 * r^6 +
                    2 * (2 * M^2 * a^16 + a^18) * r^4
                ) *
                cos_theta^16 +
                36 *
                (
                    a^18 * r^4 - 4 * M * a^16 * r^5 - 4 * M * a^14 * r^7 +
                    a^14 * r^8 +
                    2 * (2 * M^2 * a^14 + a^16) * r^6
                ) *
                cos_theta^14 +
                84 *
                (
                    a^16 * r^6 - 4 * M * a^14 * r^7 - 4 * M * a^12 * r^9 +
                    a^12 * r^10 +
                    2 * (2 * M^2 * a^12 + a^14) * r^8
                ) *
                cos_theta^12 +
                126 *
                (
                    a^14 * r^8 - 4 * M * a^12 * r^9 - 4 * M * a^10 * r^11 +
                    a^10 * r^12 +
                    2 * (2 * M^2 * a^10 + a^12) * r^10
                ) *
                cos_theta^10 +
                126 *
                (
                    a^12 * r^10 - 4 * M * a^10 * r^11 - 4 * M * a^8 * r^13 +
                    a^8 * r^14 +
                    2 * (2 * M^2 * a^8 + a^10) * r^12
                ) *
                cos_theta^8 +
                84 *
                (
                    a^10 * r^12 - 4 * M * a^8 * r^13 - 4 * M * a^6 * r^15 +
                    a^6 * r^16 +
                    2 * (2 * M^2 * a^6 + a^8) * r^14
                ) *
                cos_theta^6 +
                36 *
                (
                    a^8 * r^14 - 4 * M * a^6 * r^15 - 4 * M * a^4 * r^17 +
                    a^4 * r^18 +
                    2 * (2 * M^2 * a^4 + a^6) * r^16
                ) *
                cos_theta^4 +
                (
                    M^4 * a^14 * epsilon^2 * r^2 * cos_theta^10 +
                    5 * M^4 * a^12 * epsilon^2 * r^4 * cos_theta^8 +
                    10 * M^4 * a^10 * epsilon^2 * r^6 * cos_theta^6 +
                    10 * M^4 * a^8 * epsilon^2 * r^8 * cos_theta^4 +
                    5 * M^4 * a^6 * epsilon^2 * r^10 * cos_theta^2 +
                    M^4 * a^4 * epsilon^2 * r^12
                ) * sin_theta^4 +
                9 *
                (
                    a^6 * r^16 - 4 * M * a^4 * r^17 - 4 * M * a^2 * r^19 +
                    a^2 * r^20 +
                    2 * (2 * M^2 * a^2 + a^4) * r^18
                ) *
                cos_theta^2 +
                2 *
                (
                    M^2 * a^4 * epsilon * r^15 - 2 * M^3 * a^2 * epsilon * r^16 +
                    M^2 * a^2 * epsilon * r^17 +
                    (
                        M^2 * a^18 * epsilon * r - 2 * M^3 * a^16 * epsilon * r^2 +
                        M^2 * a^16 * epsilon * r^3
                    ) * cos_theta^14 +
                    7 *
                    (
                        M^2 * a^16 * epsilon * r^3 - 2 * M^3 * a^14 * epsilon * r^4 +
                        M^2 * a^14 * epsilon * r^5
                    ) *
                    cos_theta^12 +
                    21 *
                    (
                        M^2 * a^14 * epsilon * r^5 - 2 * M^3 * a^12 * epsilon * r^6 +
                        M^2 * a^12 * epsilon * r^7
                    ) *
                    cos_theta^10 +
                    35 *
                    (
                        M^2 * a^12 * epsilon * r^7 - 2 * M^3 * a^10 * epsilon * r^8 +
                        M^2 * a^10 * epsilon * r^9
                    ) *
                    cos_theta^8 +
                    35 *
                    (
                        M^2 * a^10 * epsilon * r^9 - 2 * M^3 * a^8 * epsilon * r^10 +
                        M^2 * a^8 * epsilon * r^11
                    ) *
                    cos_theta^6 +
                    21 *
                    (
                        M^2 * a^8 * epsilon * r^11 - 2 * M^3 * a^6 * epsilon * r^12 +
                        M^2 * a^6 * epsilon * r^13
                    ) *
                    cos_theta^4 +
                    7 *
                    (
                        M^2 * a^6 * epsilon * r^13 - 2 * M^3 * a^4 * epsilon * r^14 +
                        M^2 * a^4 * epsilon * r^15
                    ) *
                    cos_theta^2
                ) *
                sin_theta^2
            )
        out4 =
            (
                2 *
                (
                    M * a^7 * cos_theta^6 + M * a^5 * r^2 * cos_theta^4 -
                    M^3 * a * epsilon * r^3 - M * a * r^6 +
                    (M^3 * a^3 * epsilon * r - M * a^3 * r^4) * cos_theta^2
                ) *
                v_r *
                v_t *
                sin_theta -
                (
                    (
                        2 * M * a^8 * cos_theta^6 - 2 * M^3 * a^2 * epsilon * r^3 -
                        3 * M^2 * a^2 * epsilon * r^4 - 2 * M * a^2 * r^6 +
                        (M^2 * a^6 * epsilon + 2 * M * a^6 * r^2) * cos_theta^4 +
                        2 *
                        (
                            M^3 * a^4 * epsilon * r - M^2 * a^4 * epsilon * r^2 -
                            M * a^4 * r^4
                        ) *
                        cos_theta^2
                    ) * sin_theta^3 +
                    2 *
                    (
                        a^8 * r * cos_theta^8 - 2 * M * r^8 + r^9 -
                        2 * (M * a^6 * r^2 - 2 * a^6 * r^3) * cos_theta^6 -
                        6 * (M * a^4 * r^4 - a^4 * r^5) * cos_theta^4 -
                        2 * (3 * M * a^2 * r^6 - 2 * a^2 * r^7) * cos_theta^2
                    ) *
                    sin_theta
                ) *
                v_phi *
                v_r -
                2 *
                (
                    (
                        (a^10 - 2 * M * a^8 * r + a^8 * r^2) * cos_theta^9 -
                        2 *
                        (
                            M * a^8 * r + 5 * M * a^6 * r^3 - 2 * a^6 * r^4 -
                            2 * (M^2 * a^6 + a^8) * r^2
                        ) *
                        cos_theta^7 -
                        2 *
                        (
                            8 * M * a^4 * r^5 - 3 * a^4 * r^6 -
                            (4 * M^2 * a^4 + 3 * a^6) * r^4 +
                            (M * a^6 + M^2 * a^4 * epsilon) * r^3 +
                            (2 * M^2 * a^6 - M^3 * a^4 * epsilon) * r^2 -
                            (M * a^8 - M^2 * a^6 * epsilon) * r
                        ) *
                        cos_theta^5 +
                        2 *
                        (
                            M^2 * a^6 * epsilon * r - 2 * M^3 * a^4 * epsilon * r^2 -
                            4 * M^2 * a^4 * r^4 - 5 * M * a^2 * r^7 +
                            2 * a^2 * r^8 +
                            2 * (M^2 * a^2 + a^4) * r^6 +
                            (M * a^4 - M^2 * a^2 * epsilon) * r^5 +
                            2 * (M * a^6 + M^4 * a^2 * epsilon) * r^3
                        ) *
                        cos_theta^3 +
                        (
                            2 * M^3 * a^4 * epsilon * r^2 - 4 * M^2 * a^2 * r^6 +
                            2 * M * a^2 * r^7 +
                            a^2 * r^8 - 2 * M * r^9 +
                            r^10 +
                            2 * (M * a^4 + M^2 * a^2 * epsilon) * r^5 -
                            2 * (2 * M^4 * a^2 - M^2 * a^4) * epsilon * r^3
                        ) * cos_theta
                    ) * v_phi -
                    2 *
                    (
                        (M * a^7 * r - 2 * M^2 * a^5 * r^2 + M * a^5 * r^3) * cos_theta^5 +
                        2 *
                        (M * a^5 * r^3 - 2 * M^2 * a^3 * r^4 + M * a^3 * r^5) *
                        cos_theta^3 +
                        (
                            M^3 * a^3 * epsilon * r^2 - 2 * M^4 * a * epsilon * r^3 +
                            M^3 * a * epsilon * r^4 +
                            M * a^3 * r^5 - 2 * M^2 * a * r^6 + M * a * r^7
                        ) * cos_theta
                    ) *
                    v_t
                ) *
                v_theta
            ) / (
                (
                    M^2 * a^2 * epsilon * r^5 + a^2 * r^8 - 2 * M * r^9 +
                    r^10 +
                    (a^10 - 2 * M * a^8 * r + a^8 * r^2) * cos_theta^8 -
                    (
                        M^2 * a^6 * epsilon * r - 4 * a^8 * r^2 + 8 * M * a^6 * r^3 -
                        4 * a^6 * r^4
                    ) * cos_theta^6 +
                    (
                        M^2 * a^6 * epsilon * r - 2 * M^2 * a^4 * epsilon * r^3 +
                        6 * a^6 * r^4 - 12 * M * a^4 * r^5 + 6 * a^4 * r^6
                    ) * cos_theta^4 +
                    (
                        2 * M^2 * a^4 * epsilon * r^3 - M^2 * a^2 * epsilon * r^5 +
                        4 * a^4 * r^6 - 8 * M * a^2 * r^7 + 4 * a^2 * r^8
                    ) * cos_theta^2
                ) * sin_theta
            )

        (out1, out2, out3, out4)
    end
end

@inline function constrain(μ, u, v, M, a, epsilon)
    ComputedGeodesicEquations.@let_unpack u v begin
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        (
            2 *
            (
                (
                    M^3 * a^7 * epsilon * r^2 * cos_theta^4 +
                    2 * M^3 * a^5 * epsilon * r^4 * cos_theta^2 +
                    M^5 * a^3 * epsilon^2 * r^3 +
                    M^3 * a^3 * epsilon * r^6
                ) * sin_theta^4 +
                (
                    M^3 * a^3 * epsilon * r^6 - 2 * M^4 * a * epsilon * r^7 +
                    M^3 * a * epsilon * r^8 +
                    M * a^3 * r^9 - 2 * M^2 * a * r^10 +
                    M * a * r^11 +
                    (M * a^11 * r - 2 * M^2 * a^9 * r^2 + M * a^9 * r^3) * cos_theta^8 +
                    4 *
                    (M * a^9 * r^3 - 2 * M^2 * a^7 * r^4 + M * a^7 * r^5) *
                    cos_theta^6 +
                    (
                        M^3 * a^7 * epsilon * r^2 - 2 * M^4 * a^5 * epsilon * r^3 +
                        M^3 * a^5 * epsilon * r^4 +
                        6 * M * a^7 * r^5 - 12 * M^2 * a^5 * r^6 + 6 * M * a^5 * r^7
                    ) * cos_theta^4 +
                    2 *
                    (
                        M^3 * a^5 * epsilon * r^4 - 2 * M^4 * a^3 * epsilon * r^5 +
                        M^3 * a^3 * epsilon * r^6 +
                        2 * M * a^5 * r^7 - 4 * M^2 * a^3 * r^8 + 2 * M * a^3 * r^9
                    ) *
                    cos_theta^2
                ) * sin_theta^2
            ) *
            v_phi +
            sqrt(
                2 * M^3 * a^4 * epsilon * μ^2 * r^12 + 6 * M * μ^2 * r^19 - μ^2 * r^20 -
                2 * (6 * M^2 + a^2) * μ^2 * r^18 +
                (8 * M^3 + 8 * M * a^2 - M^2 * epsilon) * μ^2 * r^17 -
                (8 * M^2 * a^2 + a^4 - 6 * M^3 * epsilon) * μ^2 * r^16 +
                8 * (M^5 + M^3 * a^2) * epsilon * μ^2 * r^14 +
                2 * (M * a^4 - (6 * M^4 + M^2 * a^2) * epsilon) * μ^2 * r^15 -
                (8 * M^4 * a^2 + M^2 * a^4) * epsilon * μ^2 * r^13 -
                (
                    a^20 * μ^2 - 4 * M * a^18 * μ^2 * r - 4 * M * a^16 * μ^2 * r^3 +
                    a^16 * μ^2 * r^4 +
                    2 * (2 * M^2 * a^16 + a^18) * μ^2 * r^2
                ) * cos_theta^16 +
                2 *
                (
                    M * a^18 * μ^2 * r + 17 * M * a^14 * μ^2 * r^5 - 4 * a^14 * μ^2 * r^6 -
                    4 * (5 * M^2 * a^14 + 2 * a^16) * μ^2 * r^4 +
                    2 * (2 * M^3 * a^14 + 9 * M * a^16) * μ^2 * r^3 -
                    4 * (M^2 * a^16 + a^18) * μ^2 * r^2
                ) *
                cos_theta^14 -
                (
                    M^2 * a^16 * epsilon * μ^2 * r - 4 * M^3 * a^14 * epsilon * μ^2 * r^2 -
                    126 * M * a^12 * μ^2 * r^7 +
                    28 * a^12 * μ^2 * r^8 +
                    56 * (3 * M^2 * a^12 + a^14) * μ^2 * r^6 -
                    (56 * M^3 * a^12 + 140 * M * a^14 - M^2 * a^12 * epsilon) * μ^2 * r^5 +
                    4 * (14 * M^2 * a^14 + 7 * a^16 - M^3 * a^12 * epsilon) * μ^2 * r^4 -
                    2 *
                    (7 * M * a^16 - (2 * M^4 * a^12 + M^2 * a^14) * epsilon) *
                    μ^2 *
                    r^3
                ) * cos_theta^12 +
                2 *
                (
                    M^3 * a^14 * epsilon * μ^2 * r^2 + 133 * M * a^10 * μ^2 * r^9 -
                    28 * a^10 * μ^2 * r^10 - 28 * (7 * M^2 * a^10 + 2 * a^12) * μ^2 * r^8 +
                    (84 * M^3 * a^10 + 154 * M * a^12 - 3 * M^2 * a^10 * epsilon) *
                    μ^2 *
                    r^7 -
                    (84 * M^2 * a^12 + 28 * a^14 - 13 * M^3 * a^10 * epsilon) * μ^2 * r^6 +
                    2 * (2 * M^5 * a^10 + 7 * M^3 * a^12) * epsilon * μ^2 * r^4 +
                    (21 * M * a^14 - 2 * (8 * M^4 * a^10 + 3 * M^2 * a^12) * epsilon) *
                    μ^2 *
                    r^5 - (4 * M^4 * a^12 + 3 * M^2 * a^14) * epsilon * μ^2 * r^3
                ) *
                cos_theta^10 +
                5 *
                (
                    2 * M^3 * a^12 * epsilon * μ^2 * r^4 + 70 * M * a^8 * μ^2 * r^11 -
                    14 * a^8 * μ^2 * r^12 - 28 * (4 * M^2 * a^8 + a^10) * μ^2 * r^10 +
                    (56 * M^3 * a^8 + 84 * M * a^10 - 3 * M^2 * a^8 * epsilon) * μ^2 * r^9 -
                    14 * (4 * M^2 * a^10 + a^12 - M^3 * a^8 * epsilon) * μ^2 * r^8 +
                    8 * (M^5 * a^8 + 2 * M^3 * a^10) * epsilon * μ^2 * r^6 +
                    2 *
                    (7 * M * a^12 - (10 * M^4 * a^8 + 3 * M^2 * a^10) * epsilon) *
                    μ^2 *
                    r^7 - (8 * M^4 * a^10 + 3 * M^2 * a^12) * epsilon * μ^2 * r^5
                ) *
                cos_theta^8 +
                2 *
                (
                    10 * M^3 * a^10 * epsilon * μ^2 * r^6 + 147 * M * a^6 * μ^2 * r^13 -
                    28 * a^6 * μ^2 * r^14 - 28 * (9 * M^2 * a^6 + 2 * a^8) * μ^2 * r^12 +
                    2 *
                    (70 * M^3 * a^6 + 91 * M * a^8 - 5 * M^2 * a^6 * epsilon) *
                    μ^2 *
                    r^11 -
                    2 *
                    (70 * M^2 * a^8 + 14 * a^10 - 25 * M^3 * a^6 * epsilon) *
                    μ^2 *
                    r^10 +
                    20 * (2 * M^5 * a^6 + 3 * M^3 * a^8) * epsilon * μ^2 * r^8 +
                    5 *
                    (7 * M * a^10 - 4 * (4 * M^4 * a^6 + M^2 * a^8) * epsilon) *
                    μ^2 *
                    r^9 - 10 * (4 * M^4 * a^8 + M^2 * a^10) * epsilon * μ^2 * r^7
                ) *
                cos_theta^6 +
                (
                    20 * M^3 * a^8 * epsilon * μ^2 * r^8 + 154 * M * a^4 * μ^2 * r^15 -
                    28 * a^4 * μ^2 * r^16 - 56 * (5 * M^2 * a^4 + a^6) * μ^2 * r^14 +
                    (168 * M^3 * a^4 + 196 * M * a^6 - 15 * M^2 * a^4 * epsilon) *
                    μ^2 *
                    r^13 -
                    4 * (42 * M^2 * a^6 + 7 * a^8 - 20 * M^3 * a^4 * epsilon) * μ^2 * r^12 +
                    20 * (4 * M^5 * a^4 + 5 * M^3 * a^6) * epsilon * μ^2 * r^10 +
                    2 *
                    (21 * M * a^8 - 5 * (14 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon) *
                    μ^2 *
                    r^11 - 5 * (16 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon * μ^2 * r^9
                ) * cos_theta^4 -
                (
                    M^4 * a^12 * epsilon^2 * μ^2 * r^2 * cos_theta^8 -
                    2 * M^7 * a^4 * epsilon^3 * μ^2 * r^6 +
                    M^6 * a^4 * epsilon^3 * μ^2 * r^7 -
                    2 * M^5 * a^4 * epsilon^2 * μ^2 * r^9 +
                    M^4 * a^4 * epsilon^2 * μ^2 * r^10 -
                    2 *
                    (
                        M^5 * a^10 * epsilon^2 * μ^2 * r^3 -
                        2 * M^4 * a^10 * epsilon^2 * μ^2 * r^4
                    ) *
                    cos_theta^6 +
                    (
                        M^6 * a^8 * epsilon^3 * μ^2 * r^3 -
                        6 * M^5 * a^8 * epsilon^2 * μ^2 * r^5 +
                        6 * M^4 * a^8 * epsilon^2 * μ^2 * r^6
                    ) * cos_theta^4 -
                    2 *
                    (
                        M^7 * a^6 * epsilon^3 * μ^2 * r^4 -
                        M^6 * a^6 * epsilon^3 * μ^2 * r^5 +
                        3 * M^5 * a^6 * epsilon^2 * μ^2 * r^7 -
                        2 * M^4 * a^6 * epsilon^2 * μ^2 * r^8
                    ) *
                    cos_theta^2
                ) * sin_theta^4 +
                (
                    (
                        2 * M^5 * a^12 * epsilon^2 * r^3 * cos_theta^6 +
                        M^8 * a^6 * epsilon^4 * r^4 +
                        2 * M^7 * a^6 * epsilon^3 * r^6 +
                        M^6 * a^6 * epsilon^3 * r^7 +
                        2 * M^5 * a^6 * epsilon^2 * r^9 +
                        (M^6 * a^10 * epsilon^3 * r^3 + 6 * M^5 * a^10 * epsilon^2 * r^5) *
                        cos_theta^4 +
                        2 *
                        (
                            M^7 * a^8 * epsilon^3 * r^4 +
                            M^6 * a^8 * epsilon^3 * r^5 +
                            3 * M^5 * a^8 * epsilon^2 * r^7
                        ) *
                        cos_theta^2
                    ) * sin_theta^8 -
                    (
                        2 * M^7 * a^6 * epsilon^3 * r^6 - 3 * M^6 * a^6 * epsilon^3 * r^7 +
                        6 * M^7 * a^4 * epsilon^3 * r^8 +
                        2 * M^5 * a^4 * epsilon^2 * r^11 +
                        8 * M^4 * a^4 * epsilon * r^13 - 4 * M^3 * a^4 * epsilon * r^14 +
                        (8 * M^6 * a^4 - 3 * M^4 * a^6) * epsilon^2 * r^10 -
                        (4 * M^3 * a^6 * epsilon + 3 * M^4 * a^4 * epsilon^2) * r^12 -
                        4 *
                        (
                            M^3 * a^16 * epsilon * r^2 - 2 * M^4 * a^14 * epsilon * r^3 +
                            M^3 * a^14 * epsilon * r^4
                        ) *
                        cos_theta^10 -
                        (2 * M^5 * a^6 * epsilon^2 + 3 * M^6 * a^4 * epsilon^3) * r^9 -
                        (
                            3 * M^4 * a^14 * epsilon^2 * r^2 -
                            4 * M^5 * a^12 * epsilon^2 * r^3 -
                            40 * M^4 * a^12 * epsilon * r^5 +
                            20 * M^3 * a^12 * epsilon * r^6 +
                            (20 * M^3 * a^14 * epsilon + 3 * M^4 * a^12 * epsilon^2) * r^4
                        ) * cos_theta^8 -
                        2 *
                        (
                            M^5 * a^12 * epsilon^2 * r^3 -
                            7 * M^5 * a^10 * epsilon^2 * r^5 -
                            40 * M^4 * a^10 * epsilon * r^7 +
                            20 * M^3 * a^10 * epsilon * r^8 -
                            2 * (2 * M^6 * a^10 - 3 * M^4 * a^12) * epsilon^2 * r^4 +
                            2 *
                            (10 * M^3 * a^12 * epsilon + 3 * M^4 * a^10 * epsilon^2) *
                            r^6
                        ) *
                        cos_theta^6 -
                        (
                            3 * M^6 * a^10 * epsilon^3 * r^3 -
                            4 * M^7 * a^8 * epsilon^3 * r^4 -
                            18 * M^5 * a^8 * epsilon^2 * r^7 -
                            80 * M^4 * a^8 * epsilon * r^9 +
                            40 * M^3 * a^8 * epsilon * r^10 -
                            6 * (4 * M^6 * a^8 - 3 * M^4 * a^10) * epsilon^2 * r^6 +
                            2 *
                            (20 * M^3 * a^10 * epsilon + 9 * M^4 * a^8 * epsilon^2) *
                            r^8 +
                            3 * (2 * M^5 * a^10 * epsilon^2 + M^6 * a^8 * epsilon^3) * r^5
                        ) * cos_theta^4 +
                        2 *
                        (
                            M^7 * a^8 * epsilon^3 * r^4 - 3 * M^6 * a^8 * epsilon^3 * r^5 +
                            5 * M^7 * a^6 * epsilon^3 * r^6 +
                            5 * M^5 * a^6 * epsilon^2 * r^9 +
                            20 * M^4 * a^6 * epsilon * r^11 -
                            10 * M^3 * a^6 * epsilon * r^12 +
                            6 * (2 * M^6 * a^6 - M^4 * a^8) * epsilon^2 * r^8 -
                            2 *
                            (5 * M^3 * a^8 * epsilon + 3 * M^4 * a^6 * epsilon^2) *
                            r^10 -
                            3 * (M^5 * a^8 * epsilon^2 + M^6 * a^6 * epsilon^3) * r^7
                        ) *
                        cos_theta^2
                    ) * sin_theta^6 -
                    (
                        4 * M^5 * a^6 * epsilon^2 * r^9 +
                        16 * M^5 * a^4 * epsilon^2 * r^11 +
                        8 * M^2 * a^2 * r^18 - 2 * M * a^2 * r^19 -
                        (8 * M^3 * a^2 + 4 * M * a^4 + 3 * M^2 * a^2 * epsilon) * r^17 +
                        2 * (4 * M^2 * a^4 + 5 * M^3 * a^2 * epsilon) * r^16 -
                        2 * (M * a^6 + (2 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon) * r^15 -
                        (
                            3 * M^4 * a^2 * epsilon^2 +
                            4 * (2 * M^5 * a^2 - 3 * M^3 * a^4) * epsilon
                        ) * r^14 -
                        2 *
                        (
                            M * a^20 * r - 4 * M^2 * a^18 * r^2 - 4 * M^2 * a^16 * r^4 +
                            M * a^16 * r^5 +
                            2 * (2 * M^3 * a^16 + M * a^18) * r^3
                        ) *
                        cos_theta^14 -
                        3 * (M^2 * a^6 * epsilon - 4 * M^5 * a^2 * epsilon^2) * r^13 -
                        (8 * M^6 * a^4 + 3 * M^4 * a^6) * epsilon^2 * r^10 +
                        2 *
                        (
                            M^3 * a^6 * epsilon -
                            3 * (2 * M^6 * a^2 + M^4 * a^4) * epsilon^2
                        ) *
                        r^12 -
                        (
                            3 * M^2 * a^18 * epsilon * r - 8 * M^3 * a^16 * epsilon * r^2 -
                            56 * M^2 * a^14 * r^6 +
                            14 * M * a^14 * r^7 +
                            (56 * M^3 * a^14 + 28 * M * a^16 + 3 * M^2 * a^14 * epsilon) *
                            r^5 - 8 * (7 * M^2 * a^16 + M^3 * a^14 * epsilon) * r^4 +
                            2 *
                            (7 * M * a^18 + (2 * M^4 * a^14 + 3 * M^2 * a^16) * epsilon) *
                            r^3
                        ) * cos_theta^12 +
                        2 *
                        (
                            M^3 * a^16 * epsilon * r^2 - 9 * M^2 * a^16 * epsilon * r^3 +
                            84 * M^2 * a^12 * r^8 - 21 * M * a^12 * r^9 -
                            3 *
                            (28 * M^3 * a^12 + 14 * M * a^14 + 3 * M^2 * a^12 * epsilon) *
                            r^7 + (84 * M^2 * a^14 + 25 * M^3 * a^12 * epsilon) * r^6 -
                            2 * (2 * M^5 * a^12 - 13 * M^3 * a^14) * epsilon * r^4 -
                            3 *
                            (
                                7 * M * a^16 +
                                2 * (2 * M^4 * a^12 + 3 * M^2 * a^14) * epsilon
                            ) *
                            r^5
                        ) *
                        cos_theta^10 -
                        (
                            3 * M^4 * a^14 * epsilon^2 * r^2 -
                            8 * M^5 * a^12 * epsilon^2 * r^3 - 280 * M^2 * a^10 * r^10 +
                            70 * M * a^10 * r^11 +
                            5 *
                            (56 * M^3 * a^10 + 28 * M * a^12 + 9 * M^2 * a^10 * epsilon) *
                            r^9 - 10 * (28 * M^2 * a^12 + 13 * M^3 * a^10 * epsilon) * r^8 +
                            10 *
                            (
                                7 * M * a^14 +
                                3 * (2 * M^4 * a^10 + 3 * M^2 * a^12) * epsilon
                            ) *
                            r^7 +
                            (
                                3 * M^4 * a^10 * epsilon^2 +
                                20 * (2 * M^5 * a^10 - 7 * M^3 * a^12) * epsilon
                            ) * r^6 +
                            (45 * M^2 * a^14 * epsilon - 8 * M^5 * a^10 * epsilon^2) * r^5 -
                            2 *
                            (
                                5 * M^3 * a^14 * epsilon -
                                (2 * M^6 * a^10 + 3 * M^4 * a^12) * epsilon^2
                            ) *
                            r^4
                        ) * cos_theta^8 +
                        2 *
                        (
                            2 * M^5 * a^12 * epsilon^2 * r^3 +
                            20 * M^5 * a^10 * epsilon^2 * r^5 +
                            140 * M^2 * a^8 * r^12 - 35 * M * a^8 * r^13 -
                            10 *
                            (14 * M^3 * a^8 + 7 * M * a^10 + 3 * M^2 * a^8 * epsilon) *
                            r^11 + 10 * (14 * M^2 * a^10 + 9 * M^3 * a^8 * epsilon) * r^10 -
                            5 *
                            (
                                7 * M * a^12 +
                                4 * (2 * M^4 * a^8 + 3 * M^2 * a^10) * epsilon
                            ) *
                            r^9 -
                            2 *
                            (
                                3 * M^4 * a^8 * epsilon^2 +
                                10 * (2 * M^5 * a^8 - 5 * M^3 * a^10) * epsilon
                            ) *
                            r^8 -
                            6 *
                            (5 * M^2 * a^12 * epsilon - 3 * M^5 * a^8 * epsilon^2) *
                            r^7 - 2 * (2 * M^6 * a^10 + 3 * M^4 * a^12) * epsilon^2 * r^4 +
                            2 *
                            (
                                5 * M^3 * a^12 * epsilon -
                                6 * (M^6 * a^8 + M^4 * a^10) * epsilon^2
                            ) *
                            r^6
                        ) *
                        cos_theta^6 +
                        (
                            12 * M^5 * a^10 * epsilon^2 * r^5 +
                            72 * M^5 * a^8 * epsilon^2 * r^7 +
                            168 * M^2 * a^6 * r^14 - 42 * M * a^6 * r^15 -
                            3 *
                            (56 * M^3 * a^6 + 28 * M * a^8 + 15 * M^2 * a^6 * epsilon) *
                            r^13 + 28 * (6 * M^2 * a^8 + 5 * M^3 * a^6 * epsilon) * r^12 -
                            6 *
                            (7 * M * a^10 + 5 * (2 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon) *
                            r^11 -
                            2 *
                            (
                                9 * M^4 * a^6 * epsilon^2 +
                                40 * (M^5 * a^6 - 2 * M^3 * a^8) * epsilon
                            ) *
                            r^10 -
                            15 *
                            (3 * M^2 * a^10 * epsilon - 4 * M^5 * a^6 * epsilon^2) *
                            r^9 - 6 * (4 * M^6 * a^8 + 3 * M^4 * a^10) * epsilon^2 * r^6 +
                            4 *
                            (
                                5 * M^3 * a^10 * epsilon -
                                3 * (4 * M^6 * a^6 + 3 * M^4 * a^8) * epsilon^2
                            ) *
                            r^8
                        ) * cos_theta^4 +
                        2 *
                        (
                            6 * M^5 * a^8 * epsilon^2 * r^7 +
                            28 * M^5 * a^6 * epsilon^2 * r^9 +
                            28 * M^2 * a^4 * r^16 - 7 * M * a^4 * r^17 -
                            (28 * M^3 * a^4 + 14 * M * a^6 + 9 * M^2 * a^4 * epsilon) *
                            r^15 + (28 * M^2 * a^6 + 29 * M^3 * a^4 * epsilon) * r^14 -
                            (7 * M * a^8 + 6 * (2 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon) *
                            r^13 -
                            2 *
                            (
                                3 * M^4 * a^4 * epsilon^2 +
                                (10 * M^5 * a^4 - 17 * M^3 * a^6) * epsilon
                            ) *
                            r^12 -
                            (9 * M^2 * a^8 * epsilon - 22 * M^5 * a^4 * epsilon^2) * r^11 -
                            6 * (2 * M^6 * a^6 + M^4 * a^8) * epsilon^2 * r^8 +
                            (
                                5 * M^3 * a^8 * epsilon -
                                4 * (5 * M^6 * a^4 + 3 * M^4 * a^6) * epsilon^2
                            ) * r^10
                        ) *
                        cos_theta^2
                    ) * sin_theta^4 -
                    (
                        2 * M^3 * a^6 * epsilon * r^12 + 6 * M * r^21 - r^22 -
                        3 * (4 * M^2 + a^2) * r^20 +
                        (8 * M^3 + 14 * M * a^2 - M^2 * epsilon) * r^19 -
                        (20 * M^2 * a^2 + 3 * a^4 - 6 * M^3 * epsilon) * r^18 +
                        (
                            8 * M^3 * a^2 + 10 * M * a^4 -
                            3 * (4 * M^4 + M^2 * a^2) * epsilon
                        ) * r^17 -
                        (8 * M^2 * a^4 + a^6 - 2 * (4 * M^5 + 7 * M^3 * a^2) * epsilon) *
                        r^16 -
                        (
                            a^22 - 4 * M * a^20 * r - 8 * M * a^18 * r^3 -
                            4 * M * a^16 * r^5 +
                            a^16 * r^6 +
                            (4 * M^2 * a^16 + 3 * a^18) * r^4 +
                            (4 * M^2 * a^18 + 3 * a^20) * r^2
                        ) * cos_theta^16 +
                        2 * (4 * M^5 * a^2 + 5 * M^3 * a^4) * epsilon * r^14 +
                        (2 * M * a^6 - (20 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon) * r^15 -
                        (8 * M^4 * a^4 + M^2 * a^6) * epsilon * r^13 +
                        2 *
                        (
                            M * a^20 * r + 17 * M * a^14 * r^7 - 4 * a^14 * r^8 -
                            4 * (5 * M^2 * a^14 + 3 * a^16) * r^6 +
                            (4 * M^3 * a^14 + 35 * M * a^16) * r^5 -
                            12 * (2 * M^2 * a^16 + a^18) * r^4 +
                            (4 * M^3 * a^16 + 19 * M * a^18) * r^3 -
                            4 * (M^2 * a^18 + a^20) * r^2
                        ) *
                        cos_theta^14 -
                        (
                            M^2 * a^18 * epsilon * r - 4 * M^3 * a^16 * epsilon * r^2 -
                            126 * M * a^12 * r^9 +
                            28 * a^12 * r^10 +
                            84 * (2 * M^2 * a^12 + a^14) * r^8 -
                            (56 * M^3 * a^12 + 266 * M * a^14 - M^2 * a^12 * epsilon) *
                            r^7 +
                            4 * (56 * M^2 * a^14 + 21 * a^16 - M^3 * a^12 * epsilon) * r^6 -
                            (
                                56 * M^3 * a^14 + 154 * M * a^16 -
                                (4 * M^4 * a^12 + 3 * M^2 * a^14) * epsilon
                            ) * r^5 +
                            4 *
                            (14 * M^2 * a^16 + 7 * a^18 - 2 * M^3 * a^14 * epsilon) *
                            r^4 -
                            (14 * M * a^18 - (4 * M^4 * a^14 + 3 * M^2 * a^16) * epsilon) *
                            r^3
                        ) * cos_theta^12 +
                        2 *
                        (
                            M^3 * a^16 * epsilon * r^2 + 133 * M * a^10 * r^11 -
                            28 * a^10 * r^12 - 28 * (7 * M^2 * a^10 + 3 * a^12) * r^10 +
                            (84 * M^3 * a^10 + 287 * M * a^12 - 3 * M^2 * a^10 * epsilon) *
                            r^9 -
                            (280 * M^2 * a^12 + 84 * a^14 - 13 * M^3 * a^10 * epsilon) *
                            r^8 +
                            (
                                84 * M^3 * a^12 + 175 * M * a^14 -
                                (16 * M^4 * a^10 + 9 * M^2 * a^12) * epsilon
                            ) * r^7 -
                            (
                                84 * M^2 * a^14 + 28 * a^16 -
                                (4 * M^5 * a^10 + 27 * M^3 * a^12) * epsilon
                            ) * r^6 +
                            (4 * M^5 * a^12 + 15 * M^3 * a^14) * epsilon * r^4 +
                            (21 * M * a^16 - (20 * M^4 * a^12 + 9 * M^2 * a^14) * epsilon) *
                            r^5 - (4 * M^4 * a^14 + 3 * M^2 * a^16) * epsilon * r^3
                        ) *
                        cos_theta^10 +
                        5 *
                        (
                            2 * M^3 * a^14 * epsilon * r^4 + 70 * M * a^8 * r^13 -
                            14 * a^8 * r^14 - 14 * (8 * M^2 * a^8 + 3 * a^10) * r^12 +
                            (56 * M^3 * a^8 + 154 * M * a^10 - 3 * M^2 * a^8 * epsilon) *
                            r^11 -
                            14 * (12 * M^2 * a^10 + 3 * a^12 - M^3 * a^8 * epsilon) * r^10 +
                            (
                                56 * M^3 * a^10 + 98 * M * a^12 -
                                (20 * M^4 * a^8 + 9 * M^2 * a^10) * epsilon
                            ) * r^9 -
                            2 *
                            (
                                28 * M^2 * a^12 + 7 * a^14 -
                                (4 * M^5 * a^8 + 15 * M^3 * a^10) * epsilon
                            ) *
                            r^8 +
                            2 * (4 * M^5 * a^10 + 9 * M^3 * a^12) * epsilon * r^6 +
                            (14 * M * a^14 - (28 * M^4 * a^10 + 9 * M^2 * a^12) * epsilon) *
                            r^7 - (8 * M^4 * a^12 + 3 * M^2 * a^14) * epsilon * r^5
                        ) *
                        cos_theta^8 +
                        2 *
                        (
                            10 * M^3 * a^12 * epsilon * r^6 + 147 * M * a^6 * r^15 -
                            28 * a^6 * r^16 - 84 * (3 * M^2 * a^6 + a^8) * r^14 +
                            (140 * M^3 * a^6 + 329 * M * a^8 - 10 * M^2 * a^6 * epsilon) *
                            r^13 -
                            2 *
                            (196 * M^2 * a^8 + 42 * a^10 - 25 * M^3 * a^6 * epsilon) *
                            r^12 +
                            (
                                140 * M^3 * a^8 + 217 * M * a^10 -
                                10 * (8 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon
                            ) * r^11 -
                            2 *
                            (
                                70 * M^2 * a^10 + 14 * a^12 -
                                5 * (4 * M^5 * a^6 + 11 * M^3 * a^8) * epsilon
                            ) *
                            r^10 +
                            10 * (4 * M^5 * a^8 + 7 * M^3 * a^10) * epsilon * r^8 +
                            5 *
                            (7 * M * a^12 - 6 * (4 * M^4 * a^8 + M^2 * a^10) * epsilon) *
                            r^9 - 10 * (4 * M^4 * a^10 + M^2 * a^12) * epsilon * r^7
                        ) *
                        cos_theta^6 +
                        (
                            20 * M^3 * a^10 * epsilon * r^8 + 154 * M * a^4 * r^17 -
                            28 * a^4 * r^18 - 28 * (10 * M^2 * a^4 + 3 * a^6) * r^16 +
                            (168 * M^3 * a^4 + 350 * M * a^6 - 15 * M^2 * a^4 * epsilon) *
                            r^15 -
                            4 *
                            (112 * M^2 * a^6 + 21 * a^8 - 20 * M^3 * a^4 * epsilon) *
                            r^14 +
                            (
                                168 * M^3 * a^6 + 238 * M * a^8 -
                                5 * (28 * M^4 * a^4 + 9 * M^2 * a^6) * epsilon
                            ) * r^13 -
                            4 *
                            (
                                42 * M^2 * a^8 + 7 * a^10 -
                                5 * (4 * M^5 * a^4 + 9 * M^3 * a^6) * epsilon
                            ) *
                            r^12 +
                            40 * (2 * M^5 * a^6 + 3 * M^3 * a^8) * epsilon * r^10 +
                            (
                                42 * M * a^10 -
                                5 * (44 * M^4 * a^6 + 9 * M^2 * a^8) * epsilon
                            ) * r^11 -
                            5 * (16 * M^4 * a^8 + 3 * M^2 * a^10) * epsilon * r^9
                        ) * cos_theta^4 +
                        2 *
                        (
                            5 * M^3 * a^8 * epsilon * r^10 + 23 * M * a^2 * r^19 -
                            4 * a^2 * r^20 - 4 * (11 * M^2 * a^2 + 3 * a^4) * r^18 +
                            (28 * M^3 * a^2 + 53 * M * a^4 - 3 * M^2 * a^2 * epsilon) *
                            r^17 -
                            (72 * M^2 * a^4 + 12 * a^6 - 17 * M^3 * a^2 * epsilon) * r^16 +
                            (
                                28 * M^3 * a^4 + 37 * M * a^6 -
                                (32 * M^4 * a^2 + 9 * M^2 * a^4) * epsilon
                            ) * r^15 -
                            (
                                28 * M^2 * a^6 + 4 * a^8 -
                                (20 * M^5 * a^2 + 39 * M^3 * a^4) * epsilon
                            ) * r^14 +
                            (20 * M^5 * a^4 + 27 * M^3 * a^6) * epsilon * r^12 +
                            (7 * M * a^8 - (52 * M^4 * a^4 + 9 * M^2 * a^6) * epsilon) *
                            r^13 - (20 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon * r^11
                        ) *
                        cos_theta^2
                    ) * sin_theta^2
                ) * v_phi^2 -
                (
                    2 * M^5 * a^2 * epsilon^2 * r^11 +
                    4 * M^5 * epsilon^2 * r^13 +
                    8 * M^3 * epsilon * r^16 +
                    4 * M * r^19 - r^20 - (4 * M^2 + a^2) * r^18 -
                    (a^20 - 2 * M * a^18 * r + a^18 * r^2) * cos_theta^18 +
                    2 * (M * a^2 - M^2 * epsilon) * r^17 -
                    2 * (4 * M^4 + M^2 * a^2) * epsilon * r^15 +
                    (
                        2 * M * a^18 * r + 20 * M * a^16 * r^3 - 9 * a^16 * r^4 -
                        (4 * M^2 * a^16 + 9 * a^18) * r^2
                    ) * cos_theta^16 - (4 * M^6 + M^4 * a^2) * epsilon^2 * r^12 +
                    (4 * M^3 * a^2 * epsilon - M^4 * epsilon^2) * r^14 -
                    2 *
                    (
                        M^2 * a^16 * epsilon * r - 2 * M^3 * a^14 * epsilon * r^2 -
                        44 * M * a^14 * r^5 +
                        18 * a^14 * r^6 +
                        2 * (8 * M^2 * a^14 + 9 * a^16) * r^4 -
                        (8 * M * a^16 - M^2 * a^14 * epsilon) * r^3
                    ) *
                    cos_theta^14 +
                    2 *
                    (
                        2 * M^3 * a^14 * epsilon * r^2 +
                        16 * M^3 * a^12 * epsilon * r^4 +
                        112 * M * a^12 * r^7 - 42 * a^12 * r^8 -
                        14 * (4 * M^2 * a^12 + 3 * a^14) * r^6 +
                        7 * (4 * M * a^14 - M^2 * a^12 * epsilon) * r^5 -
                        (4 * M^4 * a^12 + 7 * M^2 * a^14) * epsilon * r^3
                    ) *
                    cos_theta^12 -
                    (
                        M^4 * a^12 * epsilon^2 * r^2 - 2 * M^5 * a^10 * epsilon^2 * r^3 -
                        108 * M^3 * a^10 * epsilon * r^6 - 364 * M * a^10 * r^9 +
                        126 * a^10 * r^10 +
                        14 * (16 * M^2 * a^10 + 9 * a^12) * r^8 -
                        14 * (8 * M * a^12 - 3 * M^2 * a^10 * epsilon) * r^7 +
                        6 * (8 * M^4 * a^10 + 7 * M^2 * a^12) * epsilon * r^5 -
                        (24 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * r^4
                    ) * cos_theta^10 +
                    (
                        2 * M^5 * a^10 * epsilon^2 * r^3 +
                        12 * M^5 * a^8 * epsilon^2 * r^5 +
                        200 * M^3 * a^8 * epsilon * r^8 +
                        392 * M * a^8 * r^11 - 126 * a^8 * r^12 -
                        14 * (20 * M^2 * a^8 + 9 * a^10) * r^10 +
                        70 * (2 * M * a^10 - M^2 * a^8 * epsilon) * r^9 -
                        10 * (12 * M^4 * a^8 + 7 * M^2 * a^10) * epsilon * r^7 -
                        (4 * M^6 * a^8 + 5 * M^4 * a^10) * epsilon^2 * r^4 +
                        5 * (12 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * r^6
                    ) * cos_theta^8 +
                    2 *
                    (
                        4 * M^5 * a^8 * epsilon^2 * r^5 +
                        14 * M^5 * a^6 * epsilon^2 * r^7 +
                        110 * M^3 * a^6 * epsilon * r^10 +
                        140 * M * a^6 * r^13 - 42 * a^6 * r^14 -
                        14 * (8 * M^2 * a^6 + 3 * a^8) * r^12 +
                        7 * (8 * M * a^8 - 5 * M^2 * a^6 * epsilon) * r^11 -
                        5 * (16 * M^4 * a^6 + 7 * M^2 * a^8) * epsilon * r^9 -
                        (8 * M^6 * a^6 + 5 * M^4 * a^8) * epsilon^2 * r^6 +
                        5 * (8 * M^3 * a^8 * epsilon - M^4 * a^6 * epsilon^2) * r^8
                    ) *
                    cos_theta^6 +
                    2 *
                    (
                        6 * M^5 * a^6 * epsilon^2 * r^7 +
                        16 * M^5 * a^4 * epsilon^2 * r^9 +
                        72 * M^3 * a^4 * epsilon * r^12 +
                        64 * M * a^4 * r^15 - 18 * a^4 * r^16 -
                        2 * (28 * M^2 * a^4 + 9 * a^6) * r^14 +
                        7 * (4 * M * a^6 - 3 * M^2 * a^4 * epsilon) * r^13 -
                        3 * (20 * M^4 * a^4 + 7 * M^2 * a^6) * epsilon * r^11 -
                        (12 * M^6 * a^4 + 5 * M^4 * a^6) * epsilon^2 * r^8 +
                        5 * (6 * M^3 * a^6 * epsilon - M^4 * a^4 * epsilon^2) * r^10
                    ) *
                    cos_theta^4 +
                    (
                        8 * M^5 * a^4 * epsilon^2 * r^9 +
                        18 * M^5 * a^2 * epsilon^2 * r^11 +
                        52 * M^3 * a^2 * epsilon * r^14 +
                        34 * M * a^2 * r^17 - 9 * a^2 * r^18 -
                        (32 * M^2 * a^2 + 9 * a^4) * r^16 +
                        2 * (8 * M * a^4 - 7 * M^2 * a^2 * epsilon) * r^15 -
                        2 * (24 * M^4 * a^2 + 7 * M^2 * a^4) * epsilon * r^13 -
                        (16 * M^6 * a^2 + 5 * M^4 * a^4) * epsilon^2 * r^10 +
                        (24 * M^3 * a^4 * epsilon - 5 * M^4 * a^2 * epsilon^2) * r^12
                    ) * cos_theta^2 -
                    (
                        M^2 * a^16 * epsilon * r * cos_theta^14 -
                        2 * M^7 * a^2 * epsilon^3 * r^8 + M^6 * a^2 * epsilon^3 * r^9 -
                        4 * M^5 * a^2 * epsilon^2 * r^11 +
                        2 * M^4 * a^2 * epsilon^2 * r^12 - 2 * M^3 * a^2 * epsilon * r^14 +
                        M^2 * a^2 * epsilon * r^15 -
                        (2 * M^3 * a^14 * epsilon * r^2 - 7 * M^2 * a^14 * epsilon * r^3) *
                        cos_theta^12 +
                        (
                            2 * M^4 * a^12 * epsilon^2 * r^2 -
                            12 * M^3 * a^12 * epsilon * r^4 +
                            21 * M^2 * a^12 * epsilon * r^5
                        ) * cos_theta^10 -
                        (
                            4 * M^5 * a^10 * epsilon^2 * r^3 -
                            10 * M^4 * a^10 * epsilon^2 * r^4 +
                            30 * M^3 * a^10 * epsilon * r^6 -
                            35 * M^2 * a^10 * epsilon * r^7
                        ) * cos_theta^8 +
                        (
                            M^6 * a^8 * epsilon^3 * r^3 - 16 * M^5 * a^8 * epsilon^2 * r^5 +
                            20 * M^4 * a^8 * epsilon^2 * r^6 -
                            40 * M^3 * a^8 * epsilon * r^8 + 35 * M^2 * a^8 * epsilon * r^9
                        ) * cos_theta^6 -
                        (
                            2 * M^7 * a^6 * epsilon^3 * r^4 -
                            3 * M^6 * a^6 * epsilon^3 * r^5 +
                            24 * M^5 * a^6 * epsilon^2 * r^7 -
                            20 * M^4 * a^6 * epsilon^2 * r^8 +
                            30 * M^3 * a^6 * epsilon * r^10 -
                            21 * M^2 * a^6 * epsilon * r^11
                        ) * cos_theta^4 -
                        (
                            4 * M^7 * a^4 * epsilon^3 * r^6 -
                            3 * M^6 * a^4 * epsilon^3 * r^7 +
                            16 * M^5 * a^4 * epsilon^2 * r^9 -
                            10 * M^4 * a^4 * epsilon^2 * r^10 +
                            12 * M^3 * a^4 * epsilon * r^12 -
                            7 * M^2 * a^4 * epsilon * r^13
                        ) * cos_theta^2
                    ) * sin_theta^2
                ) * v_r^2 -
                (
                    2 * M^3 * a^4 * epsilon * r^14 + 6 * M * r^21 - r^22 -
                    2 * (6 * M^2 + a^2) * r^20 +
                    (8 * M^3 + 8 * M * a^2 - M^2 * epsilon) * r^19 -
                    (8 * M^2 * a^2 + a^4 - 6 * M^3 * epsilon) * r^18 -
                    (
                        a^22 - 4 * M * a^20 * r - 4 * M * a^18 * r^3 +
                        a^18 * r^4 +
                        2 * (2 * M^2 * a^18 + a^20) * r^2
                    ) * cos_theta^18 +
                    8 * (M^5 + M^3 * a^2) * epsilon * r^16 +
                    2 * (M * a^4 - (6 * M^4 + M^2 * a^2) * epsilon) * r^17 -
                    (8 * M^4 * a^2 + M^2 * a^4) * epsilon * r^15 +
                    (
                        2 * M * a^20 * r + 38 * M * a^16 * r^5 - 9 * a^16 * r^6 -
                        2 * (22 * M^2 * a^16 + 9 * a^18) * r^4 +
                        8 * (M^3 * a^16 + 5 * M * a^18) * r^3 -
                        (8 * M^2 * a^18 + 9 * a^20) * r^2
                    ) * cos_theta^16 -
                    (
                        M^2 * a^18 * epsilon * r - 4 * M^3 * a^16 * epsilon * r^2 -
                        160 * M * a^14 * r^7 +
                        36 * a^14 * r^8 +
                        8 * (26 * M^2 * a^14 + 9 * a^16) * r^6 -
                        (64 * M^3 * a^14 + 176 * M * a^16 - M^2 * a^14 * epsilon) * r^5 +
                        4 * (16 * M^2 * a^16 + 9 * a^18 - M^3 * a^14 * epsilon) * r^4 -
                        2 * (8 * M * a^18 - (2 * M^4 * a^14 + M^2 * a^16) * epsilon) * r^3
                    ) * cos_theta^14 +
                    (
                        2 * M^3 * a^16 * epsilon * r^2 + 392 * M * a^12 * r^9 -
                        84 * a^12 * r^10 - 56 * (10 * M^2 * a^12 + 3 * a^14) * r^8 +
                        7 * (32 * M^3 * a^12 + 64 * M * a^14 - M^2 * a^12 * epsilon) * r^7 -
                        2 *
                        (112 * M^2 * a^14 + 42 * a^16 - 15 * M^3 * a^12 * epsilon) *
                        r^6 +
                        8 * (M^5 * a^12 + 4 * M^3 * a^14) * epsilon * r^4 +
                        2 *
                        (28 * M * a^16 - (18 * M^4 * a^12 + 7 * M^2 * a^14) * epsilon) *
                        r^5 - (8 * M^4 * a^14 + 7 * M^2 * a^16) * epsilon * r^3
                    ) * cos_theta^12 +
                    (
                        12 * M^3 * a^14 * epsilon * r^4 + 616 * M * a^10 * r^11 -
                        126 * a^10 * r^12 - 28 * (34 * M^2 * a^10 + 9 * a^12) * r^10 +
                        7 *
                        (64 * M^3 * a^10 + 104 * M * a^12 - 3 * M^2 * a^10 * epsilon) *
                        r^9 -
                        2 *
                        (224 * M^2 * a^12 + 63 * a^14 - 48 * M^3 * a^10 * epsilon) *
                        r^8 +
                        12 * (4 * M^5 * a^10 + 9 * M^3 * a^12) * epsilon * r^6 +
                        2 *
                        (56 * M * a^14 - 3 * (22 * M^4 * a^10 + 7 * M^2 * a^12) * epsilon) *
                        r^7 - 3 * (16 * M^4 * a^12 + 7 * M^2 * a^14) * epsilon * r^5
                    ) * cos_theta^10 +
                    (
                        30 * M^3 * a^12 * epsilon * r^6 + 644 * M * a^8 * r^13 -
                        126 * a^8 * r^14 - 28 * (38 * M^2 * a^8 + 9 * a^10) * r^12 +
                        7 *
                        (80 * M^3 * a^8 + 112 * M * a^10 - 5 * M^2 * a^8 * epsilon) *
                        r^11 -
                        2 *
                        (280 * M^2 * a^10 + 63 * a^12 - 85 * M^3 * a^8 * epsilon) *
                        r^10 +
                        40 * (3 * M^5 * a^8 + 5 * M^3 * a^10) * epsilon * r^8 +
                        10 *
                        (14 * M * a^12 - (26 * M^4 * a^8 + 7 * M^2 * a^10) * epsilon) *
                        r^9 - 5 * (24 * M^4 * a^10 + 7 * M^2 * a^12) * epsilon * r^7
                    ) * cos_theta^8 +
                    (
                        40 * M^3 * a^10 * epsilon * r^8 + 448 * M * a^6 * r^15 -
                        84 * a^6 * r^16 - 56 * (14 * M^2 * a^6 + 3 * a^8) * r^14 +
                        7 *
                        (64 * M^3 * a^6 + 80 * M * a^8 - 5 * M^2 * a^6 * epsilon) *
                        r^13 -
                        4 *
                        (112 * M^2 * a^8 + 21 * a^10 - 45 * M^3 * a^6 * epsilon) *
                        r^12 +
                        20 * (8 * M^5 * a^6 + 11 * M^3 * a^8) * epsilon * r^10 +
                        2 *
                        (56 * M * a^10 - 5 * (30 * M^4 * a^6 + 7 * M^2 * a^8) * epsilon) *
                        r^11 - 5 * (32 * M^4 * a^8 + 7 * M^2 * a^10) * epsilon * r^9
                    ) * cos_theta^6 +
                    (
                        30 * M^3 * a^8 * epsilon * r^10 + 200 * M * a^4 * r^17 -
                        36 * a^4 * r^18 - 8 * (46 * M^2 * a^4 + 9 * a^6) * r^16 +
                        (224 * M^3 * a^4 + 256 * M * a^6 - 21 * M^2 * a^4 * epsilon) *
                        r^15 -
                        2 * (112 * M^2 * a^6 + 18 * a^8 - 57 * M^3 * a^4 * epsilon) * r^14 +
                        24 * (5 * M^5 * a^4 + 6 * M^3 * a^6) * epsilon * r^12 +
                        2 *
                        (28 * M * a^8 - 3 * (34 * M^4 * a^4 + 7 * M^2 * a^6) * epsilon) *
                        r^13 - 3 * (40 * M^4 * a^6 + 7 * M^2 * a^8) * epsilon * r^11
                    ) * cos_theta^4 -
                    (
                        M^4 * a^14 * epsilon^2 * r^2 * cos_theta^10 -
                        2 * M^7 * a^4 * epsilon^3 * r^8 + M^6 * a^4 * epsilon^3 * r^9 -
                        2 * M^5 * a^4 * epsilon^2 * r^11 + M^4 * a^4 * epsilon^2 * r^12 -
                        (
                            2 * M^5 * a^12 * epsilon^2 * r^3 -
                            5 * M^4 * a^12 * epsilon^2 * r^4
                        ) * cos_theta^8 +
                        (
                            M^6 * a^10 * epsilon^3 * r^3 -
                            8 * M^5 * a^10 * epsilon^2 * r^5 +
                            10 * M^4 * a^10 * epsilon^2 * r^6
                        ) * cos_theta^6 -
                        (
                            2 * M^7 * a^8 * epsilon^3 * r^4 -
                            3 * M^6 * a^8 * epsilon^3 * r^5 +
                            12 * M^5 * a^8 * epsilon^2 * r^7 -
                            10 * M^4 * a^8 * epsilon^2 * r^8
                        ) * cos_theta^4 -
                        (
                            4 * M^7 * a^6 * epsilon^3 * r^6 -
                            3 * M^6 * a^6 * epsilon^3 * r^7 +
                            8 * M^5 * a^6 * epsilon^2 * r^9 -
                            5 * M^4 * a^6 * epsilon^2 * r^10
                        ) * cos_theta^2
                    ) * sin_theta^4 +
                    (
                        12 * M^3 * a^6 * epsilon * r^12 + 52 * M * a^2 * r^19 -
                        9 * a^2 * r^20 - 2 * (50 * M^2 * a^2 + 9 * a^4) * r^18 +
                        (64 * M^3 * a^2 + 68 * M * a^4 - 7 * M^2 * a^2 * epsilon) * r^17 -
                        (64 * M^2 * a^4 + 9 * a^6 - 40 * M^3 * a^2 * epsilon) * r^16 +
                        4 * (12 * M^5 * a^2 + 13 * M^3 * a^4) * epsilon * r^14 +
                        2 *
                        (8 * M * a^6 - (38 * M^4 * a^2 + 7 * M^2 * a^4) * epsilon) *
                        r^15 - (48 * M^4 * a^4 + 7 * M^2 * a^6) * epsilon * r^13
                    ) * cos_theta^2 +
                    2 *
                    (
                        2 * M^5 * a^4 * epsilon^2 * r^11 +
                        4 * M^5 * a^2 * epsilon^2 * r^13 +
                        4 * M^3 * a^2 * epsilon * r^16 - M^2 * a^2 * epsilon * r^17 -
                        (4 * M^4 * a^2 + M^2 * a^4) * epsilon * r^15 -
                        (4 * M^6 * a^2 + M^4 * a^4) * epsilon^2 * r^12 +
                        (2 * M^3 * a^4 * epsilon - M^4 * a^2 * epsilon^2) * r^14 -
                        (
                            M^2 * a^18 * epsilon * r - 2 * M^3 * a^16 * epsilon * r^2 +
                            M^2 * a^16 * epsilon * r^3
                        ) * cos_theta^14 +
                        (
                            2 * M^3 * a^16 * epsilon * r^2 +
                            16 * M^3 * a^14 * epsilon * r^4 -
                            7 * M^2 * a^14 * epsilon * r^5 -
                            (4 * M^4 * a^14 + 7 * M^2 * a^16) * epsilon * r^3
                        ) * cos_theta^12 -
                        (
                            M^4 * a^14 * epsilon^2 * r^2 -
                            2 * M^5 * a^12 * epsilon^2 * r^3 -
                            54 * M^3 * a^12 * epsilon * r^6 +
                            21 * M^2 * a^12 * epsilon * r^7 +
                            3 * (8 * M^4 * a^12 + 7 * M^2 * a^14) * epsilon * r^5 -
                            (12 * M^3 * a^14 * epsilon - M^4 * a^12 * epsilon^2) * r^4
                        ) * cos_theta^10 +
                        (
                            2 * M^5 * a^12 * epsilon^2 * r^3 +
                            12 * M^5 * a^10 * epsilon^2 * r^5 +
                            100 * M^3 * a^10 * epsilon * r^8 -
                            35 * M^2 * a^10 * epsilon * r^9 -
                            5 * (12 * M^4 * a^10 + 7 * M^2 * a^12) * epsilon * r^7 -
                            (4 * M^6 * a^10 + 5 * M^4 * a^12) * epsilon^2 * r^4 +
                            5 * (6 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * r^6
                        ) * cos_theta^8 +
                        (
                            8 * M^5 * a^10 * epsilon^2 * r^5 +
                            28 * M^5 * a^8 * epsilon^2 * r^7 +
                            110 * M^3 * a^8 * epsilon * r^10 -
                            35 * M^2 * a^8 * epsilon * r^11 -
                            5 * (16 * M^4 * a^8 + 7 * M^2 * a^10) * epsilon * r^9 -
                            2 * (8 * M^6 * a^8 + 5 * M^4 * a^10) * epsilon^2 * r^6 +
                            10 * (4 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * r^8
                        ) * cos_theta^6 +
                        (
                            12 * M^5 * a^8 * epsilon^2 * r^7 +
                            32 * M^5 * a^6 * epsilon^2 * r^9 +
                            72 * M^3 * a^6 * epsilon * r^12 -
                            21 * M^2 * a^6 * epsilon * r^13 -
                            3 * (20 * M^4 * a^6 + 7 * M^2 * a^8) * epsilon * r^11 -
                            2 * (12 * M^6 * a^6 + 5 * M^4 * a^8) * epsilon^2 * r^8 +
                            10 * (3 * M^3 * a^8 * epsilon - M^4 * a^6 * epsilon^2) * r^10
                        ) * cos_theta^4 +
                        (
                            8 * M^5 * a^6 * epsilon^2 * r^9 +
                            18 * M^5 * a^4 * epsilon^2 * r^11 +
                            26 * M^3 * a^4 * epsilon * r^14 -
                            7 * M^2 * a^4 * epsilon * r^15 -
                            (24 * M^4 * a^4 + 7 * M^2 * a^6) * epsilon * r^13 -
                            (16 * M^6 * a^4 + 5 * M^4 * a^6) * epsilon^2 * r^10 +
                            (12 * M^3 * a^6 * epsilon - 5 * M^4 * a^4 * epsilon^2) * r^12
                        ) * cos_theta^2
                    ) *
                    sin_theta^2
                ) * v_theta^2 +
                2 *
                (
                    5 * M^3 * a^6 * epsilon * μ^2 * r^10 + 23 * M * a^2 * μ^2 * r^17 -
                    4 * a^2 * μ^2 * r^18 - 4 * (11 * M^2 * a^2 + 2 * a^4) * μ^2 * r^16 +
                    (28 * M^3 * a^2 + 30 * M * a^4 - 3 * M^2 * a^2 * epsilon) * μ^2 * r^15 -
                    (28 * M^2 * a^4 + 4 * a^6 - 17 * M^3 * a^2 * epsilon) * μ^2 * r^14 +
                    2 * (10 * M^5 * a^2 + 11 * M^3 * a^4) * epsilon * μ^2 * r^12 +
                    (7 * M * a^6 - 2 * (16 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon) *
                    μ^2 *
                    r^13 - (20 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon * μ^2 * r^11
                ) *
                cos_theta^2 +
                2 *
                (
                    2 * M^5 * a^4 * epsilon^2 * μ^2 * r^9 +
                    4 * M^5 * a^2 * epsilon^2 * μ^2 * r^11 +
                    4 * M^3 * a^2 * epsilon * μ^2 * r^14 -
                    M^2 * a^2 * epsilon * μ^2 * r^15 -
                    (4 * M^4 * a^2 + M^2 * a^4) * epsilon * μ^2 * r^13 -
                    (4 * M^6 * a^2 + M^4 * a^4) * epsilon^2 * μ^2 * r^10 +
                    (2 * M^3 * a^4 * epsilon - M^4 * a^2 * epsilon^2) * μ^2 * r^12 -
                    (
                        M^2 * a^16 * epsilon * μ^2 * r -
                        2 * M^3 * a^14 * epsilon * μ^2 * r^2 +
                        M^2 * a^14 * epsilon * μ^2 * r^3
                    ) * cos_theta^12 +
                    2 *
                    (
                        M^3 * a^14 * epsilon * μ^2 * r^2 +
                        7 * M^3 * a^12 * epsilon * μ^2 * r^4 -
                        3 * M^2 * a^12 * epsilon * μ^2 * r^5 -
                        (2 * M^4 * a^12 + 3 * M^2 * a^14) * epsilon * μ^2 * r^3
                    ) *
                    cos_theta^10 -
                    (
                        M^4 * a^12 * epsilon^2 * μ^2 * r^2 -
                        2 * M^5 * a^10 * epsilon^2 * μ^2 * r^3 -
                        40 * M^3 * a^10 * epsilon * μ^2 * r^6 +
                        15 * M^2 * a^10 * epsilon * μ^2 * r^7 +
                        5 * (4 * M^4 * a^10 + 3 * M^2 * a^12) * epsilon * μ^2 * r^5 -
                        (10 * M^3 * a^12 * epsilon - M^4 * a^10 * epsilon^2) * μ^2 * r^4
                    ) * cos_theta^8 +
                    2 *
                    (
                        M^5 * a^10 * epsilon^2 * μ^2 * r^3 +
                        5 * M^5 * a^8 * epsilon^2 * μ^2 * r^5 +
                        30 * M^3 * a^8 * epsilon * μ^2 * r^8 -
                        10 * M^2 * a^8 * epsilon * μ^2 * r^9 -
                        10 * (2 * M^4 * a^8 + M^2 * a^10) * epsilon * μ^2 * r^7 -
                        2 * (M^6 * a^8 + M^4 * a^10) * epsilon^2 * μ^2 * r^4 +
                        2 * (5 * M^3 * a^10 * epsilon - M^4 * a^8 * epsilon^2) * μ^2 * r^6
                    ) *
                    cos_theta^6 +
                    (
                        6 * M^5 * a^8 * epsilon^2 * μ^2 * r^5 +
                        18 * M^5 * a^6 * epsilon^2 * μ^2 * r^7 +
                        50 * M^3 * a^6 * epsilon * μ^2 * r^10 -
                        15 * M^2 * a^6 * epsilon * μ^2 * r^11 -
                        5 * (8 * M^4 * a^6 + 3 * M^2 * a^8) * epsilon * μ^2 * r^9 -
                        6 * (2 * M^6 * a^6 + M^4 * a^8) * epsilon^2 * μ^2 * r^6 +
                        2 *
                        (10 * M^3 * a^8 * epsilon - 3 * M^4 * a^6 * epsilon^2) *
                        μ^2 *
                        r^8
                    ) * cos_theta^4 +
                    2 *
                    (
                        3 * M^5 * a^6 * epsilon^2 * μ^2 * r^7 +
                        7 * M^5 * a^4 * epsilon^2 * μ^2 * r^9 +
                        11 * M^3 * a^4 * epsilon * μ^2 * r^12 -
                        3 * M^2 * a^4 * epsilon * μ^2 * r^13 -
                        (10 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon * μ^2 * r^11 -
                        2 * (3 * M^6 * a^4 + M^4 * a^6) * epsilon^2 * μ^2 * r^8 +
                        (5 * M^3 * a^6 * epsilon - 2 * M^4 * a^4 * epsilon^2) * μ^2 * r^10
                    ) *
                    cos_theta^2
                ) *
                sin_theta^2,
            ) * (a^2 * cos_theta^2 + r^2)
        ) / (
            2 * M^3 * a^2 * epsilon * r^6 + 4 * M^3 * epsilon * r^8 + 4 * M * r^11 - r^12 -
            (4 * M^2 + a^2) * r^10 - (a^12 - 2 * M * a^10 * r + a^10 * r^2) * cos_theta^10 +
            (2 * M * a^2 - M^2 * epsilon) * r^9 - (4 * M^4 + M^2 * a^2) * epsilon * r^7 +
            (
                2 * M * a^10 * r + 12 * M * a^8 * r^3 - 5 * a^8 * r^4 -
                (4 * M^2 * a^8 + 5 * a^10) * r^2
            ) * cos_theta^8 -
            (
                M^2 * a^8 * epsilon * r - 2 * M^3 * a^6 * epsilon * r^2 -
                28 * M * a^6 * r^5 +
                10 * a^6 * r^6 +
                2 * (8 * M^2 * a^6 + 5 * a^8) * r^4 -
                (8 * M * a^8 - M^2 * a^6 * epsilon) * r^3
            ) * cos_theta^6 +
            (
                2 * M^3 * a^6 * epsilon * r^2 +
                8 * M^3 * a^4 * epsilon * r^4 +
                32 * M * a^4 * r^7 - 10 * a^4 * r^8 - 2 * (12 * M^2 * a^4 + 5 * a^6) * r^6 +
                3 * (4 * M * a^6 - M^2 * a^4 * epsilon) * r^5 -
                (4 * M^4 * a^4 + 3 * M^2 * a^6) * epsilon * r^3
            ) * cos_theta^4 +
            (
                4 * M^3 * a^4 * epsilon * r^4 +
                10 * M^3 * a^2 * epsilon * r^6 +
                18 * M * a^2 * r^9 - 5 * a^2 * r^10 - (16 * M^2 * a^2 + 5 * a^4) * r^8 +
                (8 * M * a^4 - 3 * M^2 * a^2 * epsilon) * r^7 -
                (8 * M^4 * a^2 + 3 * M^2 * a^4) * epsilon * r^5
            ) * cos_theta^2 -
            (
                M^2 * a^8 * epsilon * r * cos_theta^6 - 2 * M^5 * a^2 * epsilon^2 * r^3 +
                M^4 * a^2 * epsilon^2 * r^4 - 2 * M^3 * a^2 * epsilon * r^6 +
                M^2 * a^2 * epsilon * r^7 -
                (2 * M^3 * a^6 * epsilon * r^2 - 3 * M^2 * a^6 * epsilon * r^3) *
                cos_theta^4 +
                (
                    M^4 * a^4 * epsilon^2 * r^2 - 4 * M^3 * a^4 * epsilon * r^4 +
                    3 * M^2 * a^4 * epsilon * r^5
                ) * cos_theta^2
            ) * sin_theta^2
        )
    end
end

@inline function jacobian(u, M, a, epsilon)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        comp1 = @SMatrix [
            0 0 0 0
            0 0 0 0
            0 0 0 0
            0 0 0 0
        ]
        comp2 = @SMatrix [
            (2*M*a^6*cos_theta^6-8*M^3*epsilon*r^3+3*M^2*epsilon*r^4-2*M*r^6-(M^2*a^4*epsilon-2*M*a^4*r^2)*cos_theta^4+2*(2*M^3*a^2*epsilon*r+M^2*a^2*epsilon*r^2-M*a^2*r^4)*cos_theta^2)/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8) 0 0 -2*(M*a^7*cos_theta^6+M*a^5*r^2*cos_theta^4-4*M^3*a*epsilon*r^3-M*a*r^6+(2*M^3*a^3*epsilon*r-M*a^3*r^4)*cos_theta^2)*sin_theta^2/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8)
            0 (2*M^4*a^2*epsilon^2*r^3+4*M^2*a^2*epsilon*r^6+4*M^3*epsilon*r^7-3*M^2*epsilon*r^8+2*a^2*r^9-2*M*r^10+2*(M*a^10-a^10*r)*cos_theta^10+(M^2*a^8*epsilon+2*a^10*r+6*M*a^8*r^2-8*a^8*r^3)*cos_theta^8-4*(M^2*a^6*epsilon*r^2-2*a^8*r^3-M*a^6*r^4+3*a^6*r^5)*cos_theta^6+2*(2*M^2*a^6*epsilon*r^2+2*M^3*a^4*epsilon*r^3-7*M^2*a^4*epsilon*r^4+6*a^6*r^5-2*M*a^4*r^6-4*a^4*r^7)*cos_theta^4-2*(M^4*a^2*epsilon^2*r^3-4*M^2*a^4*epsilon*r^4-4*M^3*a^2*epsilon*r^5+6*M^2*a^2*epsilon*r^6-4*a^4*r^7+3*M*a^2*r^8+a^2*r^9)*cos_theta^2)/(M^4*a^4*epsilon^2*r^2*sin_theta^4+a^4*r^8-4*M*a^2*r^9-4*M*r^11+r^12+2*(2*M^2+a^2)*r^10+(a^12-4*M*a^10*r-4*M*a^8*r^3+a^8*r^4+2*(2*M^2*a^8+a^10)*r^2)*cos_theta^8+4*(a^10*r^2-4*M*a^8*r^3-4*M*a^6*r^5+a^6*r^6+2*(2*M^2*a^6+a^8)*r^4)*cos_theta^6+6*(a^8*r^4-4*M*a^6*r^5-4*M*a^4*r^7+a^4*r^8+2*(2*M^2*a^4+a^6)*r^6)*cos_theta^4+4*(a^6*r^6-4*M*a^4*r^7-4*M*a^2*r^9+a^2*r^10+2*(2*M^2*a^2+a^4)*r^8)*cos_theta^2+2*(M^2*a^4*epsilon*r^5-2*M^3*a^2*epsilon*r^6+M^2*a^2*epsilon*r^7+(M^2*a^8*epsilon*r-2*M^3*a^6*epsilon*r^2+M^2*a^6*epsilon*r^3)*cos_theta^4+2*(M^2*a^6*epsilon*r^3-2*M^3*a^4*epsilon*r^4+M^2*a^4*epsilon*r^5)*cos_theta^2)*sin_theta^2) 0 0
            0 0 2*r 0
            -2*(M*a^7*cos_theta^6+M*a^5*r^2*cos_theta^4-4*M^3*a*epsilon*r^3-M*a*r^6+(2*M^3*a^3*epsilon*r-M*a^3*r^4)*cos_theta^2)*sin_theta^2/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8) 0 0 ((2*M*a^8*cos_theta^6-8*M^3*a^2*epsilon*r^3-3*M^2*a^2*epsilon*r^4-2*M*a^2*r^6+(M^2*a^6*epsilon+2*M*a^6*r^2)*cos_theta^4+2*(2*M^3*a^4*epsilon*r-M^2*a^4*epsilon*r^2-M*a^4*r^4)*cos_theta^2)*sin_theta^4+2*(a^8*r*cos_theta^8+4*a^6*r^3*cos_theta^6+6*a^4*r^5*cos_theta^4+4*a^2*r^7*cos_theta^2+r^9)*sin_theta^2)/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8)
        ]
        comp3 = @SMatrix [
            4*(M*a^6*r*cos_theta^5-(M^2*a^4*epsilon*r-2*M*a^4*r^3)*cos_theta^3+(3*M^3*a^2*epsilon*r^2-M^2*a^2*epsilon*r^3+M*a^2*r^5)*cos_theta)*sin_theta/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8) 0 0 -4*((M*a^7*r+M*a^5*r^3)*cos_theta^5-2*(M^3*a^3*epsilon*r^2-M*a^5*r^3-M*a^3*r^5)*cos_theta^3+(3*M^3*a^3*epsilon*r^2+M^3*a*epsilon*r^4+M*a^3*r^5+M*a*r^7)*cos_theta)*sin_theta/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8)
            0 -2*((a^12-2*M*a^10*r+a^10*r^2)*cos_theta^9-2*(M^2*a^8*epsilon*r-2*a^10*r^2+4*M*a^8*r^3-2*a^8*r^4)*cos_theta^7+2*(M^2*a^8*epsilon*r+M^3*a^6*epsilon*r^2-2*M^2*a^6*epsilon*r^3+3*a^8*r^4-6*M*a^6*r^5+3*a^6*r^6)*cos_theta^5+2*(2*M^2*a^6*epsilon*r^3+2*M^3*a^4*epsilon*r^4-M^2*a^4*epsilon*r^5+2*a^6*r^6-4*M*a^4*r^7+2*a^4*r^8)*cos_theta^3+(M^4*a^4*epsilon^2*r^2+M^4*a^2*epsilon^2*r^4+2*M^2*a^4*epsilon*r^5+2*M^3*a^2*epsilon*r^6+a^4*r^8-2*M*a^2*r^9+a^2*r^10)*cos_theta)*sin_theta/(M^4*a^4*epsilon^2*r^2*sin_theta^4+a^4*r^8-4*M*a^2*r^9-4*M*r^11+r^12+2*(2*M^2+a^2)*r^10+(a^12-4*M*a^10*r-4*M*a^8*r^3+a^8*r^4+2*(2*M^2*a^8+a^10)*r^2)*cos_theta^8+4*(a^10*r^2-4*M*a^8*r^3-4*M*a^6*r^5+a^6*r^6+2*(2*M^2*a^6+a^8)*r^4)*cos_theta^6+6*(a^8*r^4-4*M*a^6*r^5-4*M*a^4*r^7+a^4*r^8+2*(2*M^2*a^4+a^6)*r^6)*cos_theta^4+4*(a^6*r^6-4*M*a^4*r^7-4*M*a^2*r^9+a^2*r^10+2*(2*M^2*a^2+a^4)*r^8)*cos_theta^2+2*(M^2*a^4*epsilon*r^5-2*M^3*a^2*epsilon*r^6+M^2*a^2*epsilon*r^7+(M^2*a^8*epsilon*r-2*M^3*a^6*epsilon*r^2+M^2*a^6*epsilon*r^3)*cos_theta^4+2*(M^2*a^6*epsilon*r^3-2*M^3*a^4*epsilon*r^4+M^2*a^4*epsilon*r^5)*cos_theta^2)*sin_theta^2) 0 0
            0 0 -2*a^2*cos_theta*sin_theta 0
            -4*((M*a^7*r+M*a^5*r^3)*cos_theta^5-2*(M^3*a^3*epsilon*r^2-M*a^5*r^3-M*a^3*r^5)*cos_theta^3+(3*M^3*a^3*epsilon*r^2+M^3*a*epsilon*r^4+M*a^3*r^5+M*a*r^7)*cos_theta)*sin_theta/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8) 0 0 2*(2*(M*a^8*r*cos_theta^5+(M^2*a^6*epsilon*r+2*M*a^6*r^3)*cos_theta^3+(3*M^3*a^4*epsilon*r^2+M^2*a^4*epsilon*r^3+M*a^4*r^5)*cos_theta)*sin_theta^5+2*(2*M*a^8*r*cos_theta^7+(M^2*a^6*epsilon*r+6*M*a^6*r^3)*cos_theta^5+2*(M^3*a^4*epsilon*r^2+M^2*a^4*epsilon*r^3+3*M*a^4*r^5)*cos_theta^3+(2*M^3*a^2*epsilon*r^4+M^2*a^2*epsilon*r^5+2*M*a^2*r^7)*cos_theta)*sin_theta^3+((a^10+a^8*r^2)*cos_theta^9+4*(a^8*r^2+a^6*r^4)*cos_theta^7+6*(a^6*r^4+a^4*r^6)*cos_theta^5+4*(a^4*r^6+a^2*r^8)*cos_theta^3+(a^2*r^8+r^10)*cos_theta)*sin_theta)/(a^8*cos_theta^8+4*a^6*r^2*cos_theta^6+6*a^4*r^4*cos_theta^4+4*a^2*r^6*cos_theta^2+r^8)
        ]
        comp4 = @SMatrix [
            0 0 0 0
            0 0 0 0
            0 0 0 0
            0 0 0 0
        ]
        (comp1, comp2, comp3, comp4)
    end
end

@inline function metric(u, M, a, epsilon)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        @SMatrix [
            (M^2*epsilon*r/(a^2*cos_theta^2+r^2)^2+1)*(2*M*r/(a^2*cos_theta^2+r^2)-1) 0 0 -2*(M^2*epsilon*r/(a^2*cos_theta^2+r^2)^2+1)*M*a*r*sin_theta^2/(a^2*cos_theta^2+r^2)
            0 (a^2*cos_theta^2+r^2)*(M^2*epsilon*r/(a^2*cos_theta^2+r^2)^2+1)/(M^2*a^2*epsilon*r*sin_theta^2/(a^2*cos_theta^2+r^2)^2+a^2-2*M*r+r^2) 0 0
            0 0 a^2*cos_theta^2+r^2 0
            -2*(M^2*epsilon*r/(a^2*cos_theta^2+r^2)^2+1)*M*a*r*sin_theta^2/(a^2*cos_theta^2+r^2) 0 0 (a^2*cos_theta^2+2*M*r+r^2)*M^2*a^2*epsilon*r*sin_theta^4/(a^2*cos_theta^2+r^2)^3+(2*M*a^2*r*sin_theta^2/(a^2*cos_theta^2+r^2)+a^2+r^2)*sin_theta^2
        ]
    end
end

@inline function inverse_metric(u, M, a, epsilon)
    let t = u[1], r = u[2], theta = u[3], phi = u[4]
        cos_theta = cos(theta)
        sin_theta = sin(theta)

        @SMatrix [
            -(a^2 * r^8 + r^10 + (a^10 + a^8 * r^2) * cos_theta^8 + 4 * (a^8 * r^2 + a^6 * r^4) * cos_theta^6 + 6 * (a^6 * r^4 + a^4 * r^6) * cos_theta^4 + 4 * (a^4 * r^6 + a^2 * r^8) * cos_theta^2 + (2 * M * a^8 * r * cos_theta^6 + 2 * M^3 * a^2 * epsilon * r^4 + M^2 * a^2 * epsilon * r^5 + 2 * M * a^2 * r^7 + (M^2 * a^6 * epsilon * r + 6 * M * a^6 * r^3) * cos_theta^4 + 2 * (M^3 * a^4 * epsilon * r^2 + M^2 * a^4 * epsilon * r^3 + 3 * M * a^4 * r^5) * cos_theta^2) * sin_theta^2)/(M^4*a^2*epsilon^2*r^2+2*M^2*a^2*epsilon*r^5-2*M^3*epsilon*r^6+M^2*epsilon*r^7+a^2*r^8-2*M*r^9+r^10+(a^10-2*M*a^8*r+a^8*r^2)*cos_theta^8-(M^2*a^6*epsilon*r-4*a^8*r^2+8*M*a^6*r^3-4*a^6*r^4)*cos_theta^6+(2*M^2*a^6*epsilon*r-2*M^3*a^4*epsilon*r^2-M^2*a^4*epsilon*r^3+6*a^6*r^4-12*M*a^4*r^5+6*a^4*r^6)*cos_theta^4-(M^4*a^2*epsilon^2*r^2-4*M^2*a^4*epsilon*r^3+4*M^3*a^2*epsilon*r^4-M^2*a^2*epsilon*r^5-4*a^4*r^6+8*M*a^2*r^7-4*a^2*r^8)*cos_theta^2) 0 0 -2*(M*a^3*r*cos_theta^2+M*a*r^3)/(M^2*a^2*epsilon*r+a^2*r^4-2*M*r^5+r^6+(a^6-2*M*a^4*r+a^4*r^2)*cos_theta^4-(M^2*a^2*epsilon*r-2*a^4*r^2+4*M*a^2*r^3-2*a^2*r^4)*cos_theta^2)
            0 (M^2*a^2*epsilon*r*sin_theta^2+a^2*r^4-2*M*r^5+r^6+(a^6-2*M*a^4*r+a^4*r^2)*cos_theta^4+2*(a^4*r^2-2*M*a^2*r^3+a^2*r^4)*cos_theta^2)/(a^6*cos_theta^6+3*a^4*r^2*cos_theta^4+M^2*epsilon*r^3+r^6+(M^2*a^2*epsilon*r+3*a^2*r^4)*cos_theta^2) 0 0
            0 0 1/(a^2*cos_theta^2+r^2) 0
            -2*(M*a^3*r*cos_theta^2+M*a*r^3)/(M^2*a^2*epsilon*r+a^2*r^4-2*M*r^5+r^6+(a^6-2*M*a^4*r+a^4*r^2)*cos_theta^4-(M^2*a^2*epsilon*r-2*a^4*r^2+4*M*a^2*r^3-2*a^2*r^4)*cos_theta^2) 0 0 (a^4*cos_theta^4-2*M*r^3+r^4-2*(M*a^2*r-a^2*r^2)*cos_theta^2)/((2*M*a^4*r*cos_theta^2+M^2*a^2*epsilon*r+2*M*a^2*r^3)*sin_theta^4-(2*M*a^2*r^3-a^2*r^4+2*M*r^5-r^6-(a^6+a^4*r^2)*cos_theta^4+2*(M*a^4*r-a^4*r^2+M*a^2*r^3-a^2*r^4)*cos_theta^2)*sin_theta^2)
        ]
    end
end


end # module

@with_kw struct JohannsenPsaltis{T} <: AbstractMetricParams{T}
    @deftype T
    M = 1.0
    a = 0.0
    epsilon = 0.0
end

@with_kw struct JohannsenPsaltisJac{T} <: AbstractMetricParams{T}
    @deftype T
    M = 1.0
    a = 0.0
    epsilon = 0.0
end

geodesic_eq(m::JohannsenPsaltis{T}, u, v) where {T} =
    JohannsenPsaltisCoords.geodesic_eq(u, v, m.M, m.a, m.epsilon)
geodesic_eq(m::JohannsenPsaltisJac{T}, u, v) where {T} = jac_geodesic_eq(u, v, m)

constrain(m::JohannsenPsaltis{T}, u, v; μ::T = 0.0) where {T} =
    JohannsenPsaltisCoords.constrain(μ, u, v, m.M, m.a, m.epsilon)

# specialisations
metric(m::JohannsenPsaltis{T}, u) where {T} =
    JohannsenPsaltisCoords.metric(u, m.M, m.a, m.epsilon)
inverse_metric(m::JohannsenPsaltis{T}, u) where {T} =
    JohannsenPsaltisCoords.inverse_metric(u, m.M, m.a, m.epsilon)
jacobian(m::JohannsenPsaltis{T}, u) where {T} =
    JohannsenPsaltisCoords.jacobian(u, m.M, m.a, m.epsilon)
metric(m::JohannsenPsaltisJac{T}, u) where {T} =
    JohannsenPsaltisCoords.metric(u, m.M, m.a, m.epsilon)
inverse_metric(m::JohannsenPsaltisJac{T}, u) where {T} =
    JohannsenPsaltisCoords.inverse_metric(u, m.M, m.a, m.epsilon)
jacobian(m::JohannsenPsaltisJac{T}, u) where {T} =
    JohannsenPsaltisCoords.jacobian(u, m.M, m.a, m.epsilon)

export JohannsenPsaltisCoords, JohannsenPsaltis, JohannsenPsaltisJac

# additional specializations
inner_radius(m::JohannsenPsaltis{T}) where {T} = m.M + √(m.M^2 - m.a^2)
inner_radius(m::JohannsenPsaltisJac{T}) where {T} = m.M + √(m.M^2 - m.a^2)
